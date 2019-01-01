//
//  Category.swift
//  CoderSwag
//
//  Created by Asmaa Nour on 1/1/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import Foundation
struct Category {
   private(set) public var tital: String
   private(set) public var imageName: String
    init(title: String , imageName: String) {
     self.imageName = imageName
     self.tital  = title
    }
}
