//
//  ViewController2.swift
//  DNF
//
//  Created by Jack Livingston on 10/30/17.
//  Copyright © 2017 CS110. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
  
    @IBOutlet weak var theImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    //@IBOutlet weak var theImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = exercises[myIndex]
        descLabel.text = exerciseDescriptions[myIndex]
        //theImage.image = UIImage(named: restaurants[myIndex])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

