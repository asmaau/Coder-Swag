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
    func getCategory() -> [Category] {
        return category
    }
    
}
