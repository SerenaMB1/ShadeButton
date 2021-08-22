//
//  StatisticsViewController.swift
//  Shade
//
//  Created by Serena Badesha on 17/08/2021.
//

import UIKit

class StatisticsViewController: UIViewController {
    
    @IBOutlet weak var dailyShadeCountLabel: UILabel!
    
    @IBOutlet weak var totalShadeCountLable: UILabel!
    
    var buttonPress:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        dailyShadeCountLabel.text = "Shade Count \(buttonPress)"
        //dailyShadeCountLabel.text = "Shade Count 0"


    }
    

    


}
