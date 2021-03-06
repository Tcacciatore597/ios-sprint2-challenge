//
//  ShoppingListCollectionViewController.swift
//  Shopping List
//
//  Created by Thomas Cacciatore on 5/10/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

private let reuseIdentifier = "ShoppingItemCell"

class ShoppingListCollectionViewController: UICollectionViewController {


    // MARK: UICollectionViewDataSource


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return shoppingListController.shoppingList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ShoppingListCollectionViewCell
    
        let shoppingItem = shoppingListController.shoppingList[indexPath.item]
        cell.shoppingItem = shoppingItem
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let shoppingItem = shoppingListController.shoppingList[indexPath.item]
        shoppingListController.updateHasBeenAdded(shoppingItem: shoppingItem)
        print("cell clicked")
        collectionView.reloadData()
    }
    

    var shoppingListController = ShoppingListController()
   
}
