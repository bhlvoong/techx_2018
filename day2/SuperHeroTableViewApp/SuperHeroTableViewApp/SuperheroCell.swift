//
//  SuperheroCell.swift
//  SuperHeroTableViewApp
//
//  Created by Brian Voong on 7/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

// 1. Make sure your cell's custom class is correct
// 2. Drag in the IBOutlets
// 3. Dequeue your cell and cast to SuperheroCell "as! SuperheroCell"

class SuperheroCell: UITableViewCell {

    @IBOutlet weak var superheroImageView: UIImageView!
    @IBOutlet weak var superheroNameLabel: UILabel!
    
    @IBOutlet weak var superheroPowersLabel: UILabel!
}








