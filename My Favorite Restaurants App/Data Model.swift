//
//  Data Model.swift
//  My Favorite Restaurants App
//
//  Created by West Kraemer on 8/14/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit


//https://api.yelp.com/v3/businesses/search?term=

let clientID = "10Oh5VBeHZGmU-ir4WVFvw"
let apiKey = "BwYcwNemI37C25uuesjUA5CNZ5v8B2wUPFFDoAt5Jxhzj2WYGofYnk884PY2VJPcu-Bv-7IdUyGzT17ddZjcx2TzHH6cvk9Zz8V7_VC1EB2HC3CVlBvqurpo6DNqW3Yx"

let baseURL = "https://api.yelp.com/v3/businesses/search"


//https://api.yelp.com/v3/businesses/search?term=delis&latitude=37.786882&longitude=-122.399972&access_token=10Oh5VBeHZGmU-ir4WVFvw

// Create restaurant class:

class Restaurant: NSObject {
    let id: String
    let keyword: String
    let name: String
    let image: UIImage
    let reviewStars: String
    let distance: String
    let address: String
    
    init (id: String, keyword: String, name: String, image: UIImage, reviewStars: String, distance: String, address: String) {
        self.id = id
        self.keyword = keyword
        self.name = keyword
        self.image = image
        self.reviewStars = reviewStars
        self.distance = distance
        self.address = address
        super.init()
    }
}
