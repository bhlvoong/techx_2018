//
//  FoodTableViewController.swift
//  FoodTableExample
//
//  Created by Brian Voong on 7/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    let morningFoods = ["Eggs", "Bagels", "Sausages"]
    let lunchFoods = ["Burger", "Fries"]
    let dinnerFoods = ["Steak", "Wine"]

    // MAKE SURE USE AUTOCOMPLETE
    // Use the "section" variable
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // use an if statement to check section
        if section == 0 {
            return morningFoods.count
        } else if section == 1 {
            return lunchFoods.count
        
        } else if section == 2 {
            return dinnerFoods.count
        }
        return 0
        
        
//        } else {
//            return 0
//        }
//        return dinnerFoods.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
//    struct IndexPath {
//        let section: Int
//        let row: Int
//    }
    
    
    
    // CMD + Click
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // creating a cell manually
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "idorwhatever")
        
        var food = "Nil"
        
        if indexPath.section == 0 {
            food = morningFoods[indexPath.row]
        } else if indexPath.section == 1 {
            food = lunchFoods[indexPath.row]
        } else if indexPath.section == 2 {
            food = dinnerFoods[indexPath.row]
        }
        
        cell.textLabel?.text = food
        
        
//        let food = morningFoods[indexPath.row]
//        cell.textLabel?.text = food
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }
    
}
