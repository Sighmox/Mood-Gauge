//
//  MoodDelegate.swift
//  Mood Gauge
//
//  Created by Paul Baker on 5/7/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import Foundation


protocol MoodDelegate {
    func addNewMood(comment: String, happiness: Int16, date: Date, longitude: Float, latitude: Float) -> Void
    func delete(moods: Moods) -> Void
    
    
}


