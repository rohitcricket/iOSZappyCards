//
//  MethodsViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/30/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class MethodsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var quizMethods : [Quiz] = []
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        quizMethods = makeQuizArray()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizMethods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let quiz = quizMethods[indexPath.row]
        cell.textLabel?.text = quiz.question
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myData = quizMethods[indexPath.row]
        performSegue(withIdentifier: "detailMethodsSegue", sender: myData)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailMethodsViewController
        detailVC?.detailQA = sender as! Quiz
    }
    

    
    func makeQuizArray() -> [Quiz] {
    
        let quizM1 = Quiz()
        
        quizM1.question = "Q1: What are key methods for manipulating images?"
        quizM1.answer = "A1: func UIImageJPEGRepresentation(UIImage, CGFloat)." + "\n\n" + "UIImagePNGRepresentation(UIImage)"
        quizM1.category = "Xcode Methods"
        quizM1.author = "Rohit"
        quizM1.number = 1
        
        let quizM2 = Quiz()
        quizM2.question = "Q2: Name three tableview datasource methods."
        quizM2.answer = "A2: func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int" + "\n\n" + "func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell" + "\n\n" + "(if using lots of data) func numberOfSectionsInTableView(tableView: UITableView) -> Int"
        quizM2.category = "Xcode Methods"
        quizM2.author = "Rohit"
        quizM2.number = 2
        
        let quizM3 = Quiz()
        quizM3.question = "Q3: What does tableView(_:cellForRowAtIndexPath:) do?"
        quizM3.answer = "A3: It configures and provides a cell to display for a given row. ." + "\n\n" + "For table views with a large number of rows it displays only a small fraction of their total items at a given time. It’s most efficient for table views to only ask for the cells for rows that are being displayed."
        quizM3.category = "Xcode Methods"
        quizM3.author = "Rohit"
        quizM3.number = 3
        
        let quizM4 = Quiz()
        quizM4.question = "Q4: What does tableView(_:numberOfRowsInSection:) do?"
        quizM4.answer = "A4: It tells the table view how many rows to display in a given section."
        quizM4.category = "Xcode Methods"
        quizM4.author = "Rohit"
        quizM4.number = 4
        
        let quizM5 = Quiz()
        quizM5.question = "Q5: What is the code to show user location in Mapkit?"
        quizM5.answer = "A5: mapView.showsUserLocation = true."
        quizM5.category = "Xcode Methods"
        quizM5.author = "Rohit"
        quizM5.number = 5
        
        let quizM6 = Quiz()
        quizM6.question = "Q6: What is CLLocationManager?"
        quizM6.answer = "A6: The CLLocationManager is responsible for tracking where the user is and anytime there is an update that the User moved from one place to another." + "\n\n" + "Usage: var manager = CLLocationManager()"
        quizM6.category = "Xcode Methods"
        quizM6.author = "Rohit"
        quizM6.number = 6
        
        let quizM7 = Quiz()
        quizM7.question = "Q6: List key methods/steps to enable Mapviews"
        quizM7.answer = "A6: var manager = CLLocationManager()" + "\n\n" + "In viewDidLoad: manager.delegate = self" + "\n\n" + "Add to View Controller, a CLLocationManagerDelegate"
        quizM7.category = "Xcode Methods" + "\n\n" + "mapview.showsUserLocation = true" + "\n\n" + "manager.requestWhenInUseAuthorization"
        quizM7.author = "Rohit"
        quizM7.number = 7
        
        return [quizM1, quizM2, quizM3, quizM4, quizM5, quizM6, quizM7]
    }

}
