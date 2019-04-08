//
//  MGConnection.swift
//  ChatApp
//
//  Created by NGUYEN CHI THANH on 3/20/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

class MGConnection{
    
    static func isconnectedToInternet() -> Bool {
        return NetworkReachabilityManager()!.isReachable
    }
    
    static func request<T: Mappable>(_ apiRouter: APIRouter,_ returnType: T.Type, completion: @escaping (_ result: T?, _ error: BaseResponseError?) -> Void) {
        if !isconnectedToInternet() {
            // Xử lý khi lỗi kết nối internet
            return
        }
        
        Alamofire.request(apiRouter).responseJSON(completionHandler: {response in
            print(response)
        })//.responseObject{(response: DataResponse<BaseResponse<T>>) in
//
//            switch response.result {
//            case .success:
//                if response.response?.statusCode == 200 {
//                    print(response.result.value?.data ?? "loi roi")
//                    if(response.result.value?.isSuccessCode())! {
//                        completion((response.result.value?.data)!, nil)
//                    } else {
//                        print("loi roi")
//                        let err: BaseResponseError = BaseResponseError.init(NetworkErrorType.API_ERROR,(response.result.value?.code)!, (response.result.value?.message)!)
//                        completion(nil,err)
//                    }
//                } else {
//                    let err: BaseResponseError = BaseResponseError.init(NetworkErrorType.HTTP_ERROR, (response.response?.statusCode)!, "Request is error!")
//                    completion(nil, err)
//                }
//                break
//
//            case .failure(let error):
//                if error is AFError {
//                    let err: BaseResponseError = BaseResponseError.init(NetworkErrorType.HTTP_ERROR, error._code, "Request is error!")
//                    completion(nil,err)
//                }
//                break
//            }
//        }
        
       
    }
}
