//
//  HomePage.swift
//  DNF
//
//  Created by Jack Livingston on 12/3/17.
//  Copyright © 2017 CS110. All rights reserved.
//


import UIKit

class HomePage: UIViewController {
    
    @IBOutlet weak var mcDonaldsButton: UIButton!
    @IBOutlet weak var pandaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mcDonaldsButton.layer.zPosition = 1
        mcDonaldsButton.layer.cornerRadius = 20
        mcDonaldsButton.clipsToBounds = true
        
        pandaButton.layer.zPosition = 1
        pandaButton.layer.cornerRadius = 20
        pandaButton.clipsToBounds = true
 
    }

}


