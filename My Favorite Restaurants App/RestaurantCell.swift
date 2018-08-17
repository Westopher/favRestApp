//
//  RestaurantCell.swift
//  My Favorite Restaurants App
//
//  Created by West Kraemer on 8/16/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class RestaurantCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
