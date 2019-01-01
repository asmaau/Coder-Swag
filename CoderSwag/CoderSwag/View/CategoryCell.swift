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
    @IBOutlet weak var categoryLbl: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
