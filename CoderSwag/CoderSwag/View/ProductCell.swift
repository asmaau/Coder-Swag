//
//  ProductCellCollectionViewCell.swift
//  CoderSwag
//
//  Created by Asmaa Nour on 1/1/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    func updateViews(product: Product){
        productImg.image = UIImage(named: product.imageName)
        productName.text = product.title
        productPrice.text = product.price
        
    
    }
}
