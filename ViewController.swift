//
//  ViewController.swift
//  test
//
//  Created by Alim Ladha on 12/3/17.
//  Copyright © 2017 Alim Ladha. All rights reserved.
//

import UIKit
import CSV
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //PUT THIS CODE IN YOUR VIEWDIDLOAD AND CHANGE THE PATH TO TO THESE FILES ON YOUR COMPUTER
        //Load the Food Data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let stream = InputStream(fileAtPath: "/Users/alimladha/Documents/foodView/foodView/Foods1.csv")!
        let csv = try! CSVReader(stream: stream, hasHeaderRow: true)
        let header = csv.headerRow!
        while csv.next() != nil {
            
            let entity = NSEntityDescription.entity(forEntityName: "Food", in: context)
            let newFood = NSManagedObject(entity: entity!, insertInto: context)
            for item in header {
                if item != "" {
                    newFood.setValue(csv[item], forKey: item)
                }
            }
        }
        
        //Load the Restaurant Data
        let streamRes = InputStream(fileAtPath: "/Users/alimladha/Documents/foodView/foodView/Res1.csv")!
        let csvRes = try! CSVReader(stream: streamRes, hasHeaderRow: true)
        let headerRes = csvRes.headerRow!
        while csvRes.next() != nil {
            let entity = NSEntityDescription.entity(forEntityName: "Restaurant", in: context)
            let newRes = NSManagedObject(entity: entity!, insertInto: context)
            for item in headerRes {
                if item != "" {
                    newRes.setValue(csv[item], forKey: item)
                }
            }
        }
        
        //Save the Data
        do {
            try context.save()
        } catch{
            print("error")
        }
        
        //STOP COPYING HERE
        
        //Fetch Data
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Food")
        
        /*Add to filter query in any way
        let name = "Chicken"
        request.predicate = NSPredicate(format: "name == %@", name)
        */
        
        request.returnsObjectsAsFaults = false
        do{
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject] {
                print(data.value(forKey: "name") as! String)
            }
            
        } catch {
            print("failed")
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

