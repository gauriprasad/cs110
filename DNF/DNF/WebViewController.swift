//
//  WebViewController.swift
//  DNF
//
//  Created by Jack Livingston on 11/30/17.
//  Copyright © 2017 CS110. All rights reserved.
//
//


import UIKit

class WebViewController: UIViewController {
    
    
    @IBOutlet weak var WebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        WebView.loadRequest(NSURLRequest(url: NSURL(fileURLWithPath: Bundle.main.path(forResource: "McDonalds", ofType: "html")!) as URL) as URLRequest)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


