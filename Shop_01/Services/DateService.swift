//
//  DateService.swift
//  Shop_01
//
//  Created by NGUYEN CHI THANH on 3/14/19.
//  Copyright © 2019 NGUYEN CHI THANH. All rights reserved.
//

import Foundation
class DataService {
    static let  instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imgName: "shirts.png"),
        Category(title: "HOODIES", imgName: "hoodies.png"),
        Category(title: "HATS", imgName: "hats.png"),
        Category(title: "DIGITAL", imgName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imgName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imgName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imgName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imgName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imgName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imgName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imgName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imgName: "hoodie04.png"),
        
        ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imgName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imgName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imgName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imgName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imgName: "shirt05.png")
    ]
    
     private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forTitleProducts title:String) -> [Product]{
        switch title {
        case "SHIRTS":
           return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
          return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
}
