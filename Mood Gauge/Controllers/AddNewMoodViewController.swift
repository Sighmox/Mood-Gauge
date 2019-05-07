//
//  AddNewMoodViewController.swift
//  Mood Gauge
//
//  Created by Paul Baker on 4/30/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit
import CoreData

class AddNewMoodViewController: UIViewController {
    
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
        
        navigationController!.popViewController(animated: true)
        
    }
    

   
    
}


