//
//  TableViewController2.swift
//  DNF
//
//  Created by Jack Livingston on 10/30/17.
//  Copyright © 2017 CS110. All rights reserved.
//

import Foundation

import Foundation
import UIKit


var exercises = ["Running", "Swimming", "Basketball"]

var exerciseDescriptions = ["Running is fun", "Swimming is hard", "Basketball is my favorite sport"]

var myIndex2 = 0
import UIKit

class TableViewController2: UITableViewController {
    
    
    override func viewDidLoad() {
        //for name in restaurants {
        
        //}
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercises.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2")
        cell2?.textLabel?.text = exercises[indexPath.row]
       // cell2?.imageView?.image = UIImage(named: exercises[indexPath.row])
        return cell2!
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex2 = indexPath.row
        performSegue(withIdentifier: "exercisesegue", sender: self)
    }
}
