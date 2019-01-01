//
//  ViewController.swift
//  CoderSwag
//
//  Created by Asmaa Nour on 1/1/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController ,UITableViewDataSource, UITableViewDelegate{
   
    
    @IBOutlet weak var categoryTable : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.delegate = self
        categoryTable.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instances.getCategory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataService.instances.getCategory()[indexPath.row]
            cell.updateView(category: category)
            return cell
        }
        else{
            return CategoryCell()
        }
    }
}




