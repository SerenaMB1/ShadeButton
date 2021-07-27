//
//  ViewController.swift
//  Shade
//
//  Created by Serena Badesha on 20/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var shadeCountLabel: UILabel!

    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // view.backgroundColor = .green
    }
    @IBAction func shadeButton(_ sender: Any) {
        count += 1
        shadeCountLabel.text = "Shade Count \(count)"
    }
    

}

