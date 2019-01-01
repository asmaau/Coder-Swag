//
//  Product.swift
//  CoderSwag
//
//  Created by Asmaa Nour on 1/1/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import Foundation
struct Product{
    private(set) public var imageName: String
      private(set) public var price: String
      private(set) public var title: String
    
    init(title: String , price: String ,imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
