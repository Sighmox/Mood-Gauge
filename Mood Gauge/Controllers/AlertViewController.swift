//
//  AlertViewController.swift
//  Mood Gauge
//
//  Created by Paul Baker on 5/7/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertOKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertOKAction)
        present(alert, animated: true)
    }
}
