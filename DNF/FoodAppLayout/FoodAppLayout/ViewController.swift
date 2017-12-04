//
//  ViewController.swift
//  FoodAppLayout
//
//  Created by Jack Livingston on 12/3/17.
//  Copyright © 2017 jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationLabel.text = "West Campus" //(All are on West)

        if(appDelegate.restaurantNumber == 0){
        nameLabel.text = "Panda Express"
        hoursLabel.text = "MF 8:30-10:00, SS 9:00-8:00"
            
        }
        if(appDelegate.restaurantNumber == 1){
            nameLabel.text = "McDonald's"
            hoursLabel.text = "24hrs"
        }
        if(appDelegate.restaurantNumber == 2){
            nameLabel.text = "Au Bon Pain"
            hoursLabel.text = "MF 8:30-10:00, SS 9:00-8:00"
        }
        if(appDelegate.restaurantNumber == 3){
            nameLabel.text = "Tandoor"
            hoursLabel.text = "10:30-8:00" //guess

        }
        if(appDelegate.restaurantNumber == 4){
            nameLabel.text = "Quenchers"
            hoursLabel.text = "10:30-8:00" //guess

        }
        if(appDelegate.restaurantNumber == 5){
            nameLabel.text = "Twinnie's"
            hoursLabel.text = "7:00-8:00" //guess

        }
            
    }
        
}

