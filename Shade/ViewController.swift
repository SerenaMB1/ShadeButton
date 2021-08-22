//
//  ViewController.swift
//  Shade
//
//  Created by Serena Badesha on 20/07/2021.
//

import UIKit

class ViewController: UIViewController {
    
  // @IBOutlet weak var shadeCountLabel: UILabel!

    @IBOutlet weak var mainMenuButton: UIButton!
    
    var buttonPress:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         view.backgroundColor = .black  
    }
    @IBAction func shadeButton(_ sender: UIButton) {
        buttonPress += 1
        // shadeCountLabel.text = "Shade Count \(count)"
    }
    
    @IBAction func mainMenuButtton(_ sender: UIButton) {
        performSegue(withIdentifier: "mainMenu", sender: buttonPress)
        
        
    }
    
    
    
}

