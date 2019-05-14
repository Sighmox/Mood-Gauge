//
//  MoodMapViewController.swift
//  Mood Gauge
//
//  Created by Paul Baker on 5/8/19.
//  Copyright © 2019 Paul Baker. All rights reserved.
//

import UIKit
import MapKit
import CoreData

var Point: MKAnnotation?
var managedContext: NSManagedObjectContext?
var fetchResultsController: NSFetchedResultsController<Moods>?
var moodObjects: [Moods] = []

//extension Moods: MKAnnotation {
//    public var coordinate: CLLocationCoordinate2D {
//        let latDegrees = CLLocationDegrees(latitude)
//        let longDegrees = CLLocationDegrees(longitude)
//        return CLLocationCoordinate2D(latitude: latDegrees, longitude: longDegrees)
//    }
//}

class MoodMapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate, NSFetchedResultsControllerDelegate {
    
    
    
    
    
    
//    func addNewMood(comment: String, happiness: Int16, date: Date, longitude: Float, latitude: Float) {
//        let moodsEntity = Moods(context: managedContext!)
//        moodsEntity.comment = comment
//        moodsEntity.happiness = happiness
//        moodsEntity.date = date
//        moodsEntity.longitude = longitude
//        moodsEntity.latitude = latitude
//
//        do {
//            try managedContext!.save()
//        } catch {
//            managedContext!.reset()
//            showAlert(title: "Error", message: "Unable to add mood")
//            print("Error adding new mood, \(error)")
//        }
//    }
    
//    func delete(moods: Moods) {
//
//    }
    
    
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    let geoCoder = CLGeocoder()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        locationManager.delegate = self
//        locationManager.requestWhenInUseAuthorization()
//        mapView.delegate = self
//
//        let moodFetch = NSFetchRequest<Moods>(entityName: "Moods")
//
//        fetchResultsController = NSFetchedResultsController(fetchRequest: moodFetch, managedObjectContext: managedContext!, sectionNameKeyPath: nil, cacheName: nil)
//
//        fetchResultsController!.delegate = self
//
//        do {
//
//            try fetchResultsController!.performFetch()
//            moodObjects = fetchResultsController!.fetchedObjects!
//        } catch {
//            print("Error fetching moods \(error)")
//        }
//    }
//
//    }
//
//    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
//        moodObjects = controller.fetchedObjects as! [Moods]
    
    
     //Displays the places moods were added

//    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anobject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?)
//     {
//        switch type {
//        case .insert:
//            mapView.addAnnotation(Point!)
//
//        case .delete:
//            mapView.removeAnnotation(Point!)
//
//        case .update:
//            mapView.removeAnnotation(Point!)
//            mapView.addAnnotation(Point!)
//
//        case .move:
//            // N.B. The fetched results controller was swt up with a single sort descriptor that produced a consisitent ording for it's fetched point instances.
//            fatalError("How did we move a Point? We have a stable sort.")
//        }
//    }
    


//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotation? {
//        if annotation is MKPointAnnotation {
//            let pinAnnotation = MKPinAnnotationView()
//            let myLatitude = moodObjects
//            let myLongitude = moodObjects
//            let location = CLLocationCoordinate2D(latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>)
//            pinAnnotation.pinTintColor = UIColor.red
//            pinAnnotation.annotation = annotation
//            pinAnnotation.canShowCallout = true
//            return pinAnnotation
//        }
//        return nil // use default view, so user location beacon isn't modified
//    }
    
    }


}


