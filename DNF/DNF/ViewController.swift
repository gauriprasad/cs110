//
//  ViewController.swift
//  DNF
//
//  Created by Jack Livingston on 10/28/17.
//  Copyright © 2017 CS110. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    @IBOutlet weak var theImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = restaurants[myIndex]
        descLabel.text = restaurantDescriptions[myIndex]
        theImage.image = UIImage(named: restaurants[myIndex])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

