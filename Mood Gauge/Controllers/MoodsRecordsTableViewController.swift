//
//  MoodsRecordsTableViewController.swift
//  Mood Gauge
//
//  Created by Paul Baker on 4/30/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit
import CoreData

class MoodsRecordsTableViewController: UITableViewController, NSFetchedResultsControllerDelegate, MoodDelegate {
    func addNewMood(comment: String, happiness: Int16, date: Date, longitude: Float, latitude: Float) {
        let moodsEntity = Moods(context: managedContext!)
        moodsEntity.comment = comment
        moodsEntity.happiness = happiness
        moodsEntity.date = date
        moodsEntity.longitude = longitude
        moodsEntity.latitude = latitude
        
        do {
            try managedContext!.save()
        } catch {
            managedContext!.reset()
            showAlert(title: "Error", message: "Unable to add mood")
            print("Error adding new mood, \(error)")
        }
    }
    
    func delete(moods: Moods) {
        
    }
    
    
    var managedContext: NSManagedObjectContext?
    var fetchResultsController: NSFetchedResultsController<Moods>?
    var moodObjects: [Moods] = []
    
    @IBAction func showAddMood(_ sender: Any) {
        performSegue(withIdentifier: "AddNewMoodSegue", sender: self)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Mood Records"
        
        
        
        let sortDescriptor = NSSortDescriptor(key: "comment", ascending: true)
        let moodFetch = NSFetchRequest<Moods>(entityName: "Moods")
        moodFetch.sortDescriptors = [sortDescriptor]
        
        fetchResultsController = NSFetchedResultsController(fetchRequest: moodFetch, managedObjectContext: managedContext!, sectionNameKeyPath: nil, cacheName: nil)
        
        fetchResultsController!.delegate = self
        
        do {
            
            try fetchResultsController!.performFetch()
            moodObjects = fetchResultsController!.fetchedObjects!
        } catch {
            print("Error fetching moods \(error)")
        }
    }
        
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
            moodObjects = controller.fetchedObjects as! [Moods]
            tableView.reloadData()
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return moodObjects.count
        }
        
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let mood = moodObjects[indexPath.row]
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "MoodTableCell")!
            cell.textLabel?.text = mood.comment
            cell.detailTextLabel?.text = "\(mood.happiness) level of happiness out of 10"
            
            return cell
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier {
            
            
        case "addMood":
            let destination = segue.destination as! AddNewMoodViewController
            destination.moodDelegate = self
            
        default:
            print("What type of segue is this?")
            
        }
    }
    
    }
    

