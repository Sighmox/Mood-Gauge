//
//  AddNewMoodViewController.swift
//  Mood Gauge
//
//  Created by Paul Baker on 4/30/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit
import CoreData
import MapKit



class AddNewMoodViewController: UIViewController, CLLocationManagerDelegate {
    
    var locManager = CLLocationManager()
    
    
    let date = Date()
    
    
    @IBOutlet weak var commentTextfield: UITextField!
    @IBOutlet weak var happySlider: UISlider!
    @IBOutlet weak var happySliderValue: UILabel!
    
    
    var moods: Moods?
    var moodDelegate: MoodDelegate?
    
    override func viewDidLoad() {
    super.viewDidLoad()
        func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
            
        }
    
    }
    
    @IBAction func happySliderValueChange(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        
        happySliderValue.text = "\(currentValue)"
    }
    @IBAction func saveButton(_ sender: Any) {
        
        guard let comment = commentTextfield.text else {
            showAlert(title: "Error", message: "Enter a comment")
            return
        }
        
        guard let happiness = Int16(happySliderValue.text!) else {
            showAlert(title: "Error", message: "Value must be between 1 and 10")
            return
        }
        
        locManager.requestWhenInUseAuthorization()
        
        var currentLocation: CLLocation!
        
        if( CLLocationManager.authorizationStatus() == .authorizedWhenInUse || CLLocationManager.authorizationStatus() == .authorizedAlways) {
            
            
        }
        
        currentLocation = locManager.location
        
       // func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
            
        
        let longitude = currentLocation.coordinate.longitude
        
        let latitude = currentLocation.coordinate.latitude
        
        
        moodDelegate!.addNewMood(comment: comment, happiness: happiness, date: date, longitude: Float(longitude), latitude: Float(latitude))
        
        navigationController!.popViewController(animated: true)
    //}
        
        
        
    }

   
    
}


