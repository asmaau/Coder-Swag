//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Asmaa Nour on 1/1/19.
//  Copyright © 2019 Asmaa Nour. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
  
    @IBOutlet weak var productCollection: UICollectionView!
private (set)public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.delegate = self
        productCollection.dataSource = self
        // Do any additional setup after loading the view.
    }
    func initProduct(category: Category){
        products = DataService.instances.getproduct(ForCategoryTitle: category.tital)
        navigationItem.title = category.tital
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
            
        }
            return ProductCell()
        
     
    }
}

    


