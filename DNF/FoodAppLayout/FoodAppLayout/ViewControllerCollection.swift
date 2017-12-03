//
//  ViewControllerCollection.swift
//  FoodAppLayout
//
//  Created by Jack Livingston on 12/3/17.
//  Copyright © 2017 jack. All rights reserved.
//

import UIKit

class ViewControllerCollection: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    @IBOutlet weak var myCollectionView: UICollectionView!
    let array:[String] = ["pandaFood", "McDonaldsbutton", "ABP", "tandoor","quenchers", "twinnies"]
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Hide the navigation bar for current view controller
        self.navigationController?.isNavigationBarHidden = true;
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Show the navigation bar on other view controllers
        self.navigationController?.isNavigationBarHidden = false;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let itemSize = UIScreen.main.bounds.width/2 - 5
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(20, 0, 10, 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        myCollectionView.collectionViewLayout = layout
        myCollectionView.backgroundColor = UIColor.lightGray
        myCollectionView.delegate=self
        myCollectionView.dataSource=self
    }
    //Number of Views
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return array.count
    }
    //Populate View
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        cell.myImageView.image = UIImage(named:array[indexPath.row] + ".PNG")
        cell.myImageView.layer.cornerRadius = 20
        cell.myImageView.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "goToMenu", sender: self)
        appDelegate.restaurantNumber = indexPath.row
        print("restaurant number is" , appDelegate.restaurantNumber)
        

    }
    
}

