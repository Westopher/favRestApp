//
//  ResultsVC.swift
//  My Favorite Restaurants App
//
//  Created by West Kraemer on 8/16/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class ResultsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let restaurantNib  = UINib(nibName: "RestaurantCell", bundle: nil)
        tableView.register(restaurantNib, forCellReuseIdentifier: "searchResultCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let restaurantCell = tableView.dequeueReusableCell(withIdentifier: "searchResultCell", for: indexPath) as! RestaurantCell
        return restaurantCell
    }
    
}
