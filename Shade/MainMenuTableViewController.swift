//
//  MainMenuTableViewController.swift
//  Shade
//
//  Created by Serena Badesha on 29/07/2021.
//

import UIKit

class MainMenuTableViewController: UITableViewController {
    
    let mainMenu = ["Statistics", "Settings"]

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
    
}
