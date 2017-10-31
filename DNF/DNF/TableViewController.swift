//
//  TableViewController.swift
//  DNF
//
//  Created by Jack Livingston on 10/28/17.
//  Copyright © 2017 CS110. All rights reserved.
//

import Foundation
import UIKit


var restaurants = ["McDonalds", "Panda Express", "Cafe Edens","The Loop", "Twinnies", "Au Bon Pain"]

var restaurantDescriptions = ["McDonalds Description and other information we will add", "Panda Express", "Cafe Edens","The Loop", "Twinnies", "Au Bon Pain"]

var myIndex = 0
import UIKit

class TableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        //for name in restaurants {
            
        //}
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = restaurants[indexPath.row]
        cell?.imageView?.image = UIImage(named: restaurants[indexPath.row])
        return cell!
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}

