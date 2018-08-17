//
//  SearchVC.swift
//  My Favorite Restaurants App
//
//  Created by West Kraemer on 8/14/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit
import CoreLocation

class SearchVC: UIViewController, CLLocationManagerDelegate, UITextFieldDelegate {
    
    var latitude: Double?
    var longitude: Double?
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var enterInfoLabel: UILabel!
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        enterInfoLabel.isHidden = true
        if let searchTerm = searchTextField.text {
            if searchTerm == "" {
            enterInfoLabel.isHidden = false
            return
            }
            if (latitude != nil) {
                let yelpRequest = YelpRequest
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        print (latitude, longitude)
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let lat = locations.last?.coordinate.latitude, let long = locations.last?.coordinate.longitude {
            latitude = lat
            longitude = long
            print (lat, long)

        } else {
            print("No coordinates")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    

}
