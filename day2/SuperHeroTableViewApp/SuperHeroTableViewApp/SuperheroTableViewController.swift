//
//  SuperheroTableViewController.swift
//  SuperHeroTableViewApp
//
//  Created by Brian Voong on 7/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class SuperheroTableViewController: UITableViewController {
    
    
    let heroes = [
        Superhero(name: "Superman", powers: "Super speed and flying", image: #imageLiteral(resourceName: "superman")),
        Superhero(name: "Spiderman", powers: "Spider senses", image: #imageLiteral(resourceName: "spiderman")),
        Superhero(name: "Ironman", powers: "Plasma powers", image: #imageLiteral(resourceName: "ironman")),
        Superhero(name: "Thor", powers: "Big hammer power", image: #imageLiteral(resourceName: "thor"))
    ]
    
    // i need rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // this doesn't give us our custom cell
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "id")

        // dequeue => recycle if possible
        // Class casting
        let cell = tableView.dequeueReusableCell(withIdentifier: "id", for: indexPath) as! SuperheroCell
        
        let hero = heroes[indexPath.row]
        
        cell.superheroImageView.image = hero.image
        cell.superheroNameLabel.text = hero.name
        cell.superheroPowersLabel.text = hero.powers
        
//        cell.textLabel?.text = heroes[indexPath.row].name
//        cell.detailTextLabel?.text = heroes[indexPath.row].powers
//        cell.imageView?.image = heroes[indexPath.row].image
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 104
    }
    
}









