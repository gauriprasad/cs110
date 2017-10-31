//
//  ExerciseHistoryView.swift
//  DNF
//
//  Created by Jack Livingston on 10/30/17.
//  Copyright © 2017 CS110. All rights reserved.
//

import UIKit
import Charts

var values = [5.0, 10.0, 0.0]


class ExerciseHistoryView: UIViewController {
    var dataSet: BarChartDataSet!
    var entries: [ChartDataEntry] = Array()
    
    @IBOutlet weak var chart: BarChartView!
    func updateGraph(){
        for (i, value) in values.enumerated()
        {
            entries.append(BarChartDataEntry(x: Double(i), y: value, icon: UIImage(named: "icon", in: Bundle(for: self.classForCoder), compatibleWith: nil)))
        }
        
        dataSet = BarChartDataSet(values: entries, label: "Bar chart unit test data")
        dataSet.drawIconsEnabled = false
        dataSet.iconsOffset = CGPoint(x: 0, y: -10.0)
        
        let data = BarChartData(dataSet: dataSet)
        data.barWidth = 0.85
        
        chart.data = data
    }
    
    override func viewDidLoad() {
        updateGraph()
    }
}

    


    
    

