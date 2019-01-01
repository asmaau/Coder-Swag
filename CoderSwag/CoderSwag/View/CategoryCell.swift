//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Asmaa Nour on 1/1/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
  
    func updateView(category: Category)  {
        categoryImg.image = UIImage(named: category.imageName)
        categoryTitle.text = category.tital
        
    
    }

}
