//
//  DataService.swift
//  CoderSwag
//
//  Created by Asmaa Nour on 1/1/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import Foundation
class DataService {
    static let instances = DataService()
    private let category = [
        Category(title: " SHIRTS ", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")]
    
    private let hats = [
        Product(title: "Black Hat", price: "$ 18", imageName: "hat01.png"),
        Product(title: "Blue haat ", price: "$ 20", imageName: "hat02.png"),
        Product(title: "White hate", price: "$ 17", imageName: "hat03.png"),
        Product(title: "Blue Gray hat", price: "$ 25", imageName: "hat04.png")
        ]
    private let hoodies = [
        Product(title: "darkGray hoodies", price: "$ 40", imageName: "hoodie01.png"),
        Product(title: "Red hoodies ", price: "$ 35", imageName: "hoodie02.png"),
        Product(title: "Black hoodies ", price: "$ 35", imageName: "hoodie04.png"),
        Product(title: "Gray hoodies ", price: "$ 45", imageName: "hoodie03.png")
    ]
    private let shirts = [
        Product(title: "dark shirt", price: "$ 20", imageName: "shirt01.png"),
        Product(title: "gray shirt", price: "$ 25", imageName: "shirt02.png"),
        Product(title: "Red shirt", price: "$ 30", imageName: "shirt03.png"),
        Product(title: "DarkGray shirt", price: "$ 20", imageName: "shirt04.png"),
        Product(title: "Black shirt", price: "$ 25", imageName: "shirt05.png")
     
        ]
    private let digitalGoods = [Product]()
    
    func getCategory() -> [Category] {
        return category
    }
    
    
    func getproduct(ForCategoryTitle title:String)->[Product]{
        switch title {
        case "SHIRTS":
         return   getShirts()
        case "HATS":
           return getHats()
        case "HOODIES":
          return  getHoodies()
        case "DIGITAL":
           return getDigitalGoods()
        default:
            return   getShirts()
        }
    }
    
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies()->[Product]{
        return hoodies
    }
    
    func getShirts()->[Product]{
        return shirts
    }
    
    func getDigitalGoods()->[Product]{
        return digitalGoods
    }
    
}
