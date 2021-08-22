//
//  MainMenuTableViewController.swift
//  Shade
//
//  Created by Serena Badesha on 29/07/2021.
//

import UIKit

class MainMenuTableViewController: UITableViewController {
    
    let mainMenu = ["Statistics", "Settings","Shade Journal"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
//How many rows?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return mainMenu.count
    }
//What goes in each row?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = mainMenu[indexPath.row]

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row == 0){
        performSegue(withIdentifier: "Statistics", sender: nil)
        }
        else if(indexPath.row == 1){
        performSegue(withIdentifier: "Theme", sender: nil)
        }
        else if(indexPath.row == 2){
            performSegue(withIdentifier: "Journal", sender: nil)
            
            
        }
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (indexPath.row == 0){
//            let statisticsVC = segue.destination as! StatisticsViewController
//        statisticsVC.buttonPress = 29
//
//        }


    
//}
}
