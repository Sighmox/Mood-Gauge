//
//  AddNewMoodViewController.swift
//  Mood Gauge
//
//  Created by Paul Baker on 4/30/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit
import CoreData
import Mapkit



class AddNewMoodViewController: UIViewController, CLLocationManagerDelegate {
    
    var locManager = CLLocationManager()
    locManager.requestWhenInUseAuthorization()
    
    var currentLocation: CLLocation!
    
    if( CLLocationManager.authorizationStatus() == .authorizedWhenInUse || CLLocationManager.authorizationStatus() == .authorizedAlways) {
    
    currentLocation = locManager.location
    }
    
    let date = NSDate()
    
    @IBOutlet weak var commentTextfield: UITextField!
    @IBOutlet weak var happySlider: UISlider!
    @IBOutlet weak var happySliderValue: UILabel!
    
    var moods: Moods?
    var moodDelegate: MoodDelegate?
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
    
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
        
        guard let latitude
        
        
        moodDelegate!.addNewMood(comment: comment, happiness: happiness, date: date, longitude: latitude, latitude: longitude)
        navigationController!.popViewController(animated: true)
        
    }
    

   
    
}


