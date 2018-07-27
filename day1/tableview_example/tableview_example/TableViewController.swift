//
//  TableViewController.swift
//  tableview_example
//
//  Created by Brian Voong on 7/26/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "id")
        cell?.backgroundColor = .yellow

        if indexPath.row % 2 == 0 {
            cell?.textLabel?.text = "Even row: \(indexPath.row)"
//            cell?.backgroundColor = .black
        } else {
//            cell?.backgroundColor = .blue
            cell?.textLabel?.text = "Odd row \(indexPath.row)"
        }

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath.row)
        
    }
    
    //    func myFunctionName(firstParam: Int) -> Int {
    //
    //    }
}
