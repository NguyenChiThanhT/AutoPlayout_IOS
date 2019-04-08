//
//  APIProvider.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/20/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
import Moya
import RxSwift
class APIProvider {
    
    static let shared = MoyaProvider<MyService>()
    // trong lớp này vốn có rất nhiều thứ nhưng mình xóa đi để đơn giản hóa ví dụ
}

class ResponseError {
    
    static let invalidJSONFormat = NSError(domain: "", code: 600, userInfo: [NSLocalizedDescriptionKey: "Invalid JSON Format"])
}

class BaseService {
    
    // Sử dụng RxSwift
    static func requestJsonRx(api: MyService) -> Observable<[String: Any]> {
        return Observable.create({ observer -> Disposable in
            let request = APIProvider.shared.request(api, completion: { result in
                do {
                    switch result {
                    case .success(let response):
                        let json = try response.mapJSON()
                        if let jsonDict = json as? [String: Any] {
                            observer.onNext(jsonDict)
                            observer.onCompleted()
                        } else {
                            throw ResponseError.invalidJSONFormat
                        }
                    case .failure(let error):
                        throw error
                    }
                } catch let error {
                    observer.onError(error)
                   observer.onCompleted()
                }
            })
            return Disposables.create {
                request.cancel()
            }
        })
    }
}
