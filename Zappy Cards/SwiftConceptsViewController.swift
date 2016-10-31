//
//  SwiftConceptsViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/29/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class SwiftConceptsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var swiftConcepts : [Quiz] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        tableView.delegate = self
        tableView.dataSource = self
        swiftConcepts = makeQuizArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftConcepts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let quiz = swiftConcepts[indexPath.row]
        cell.textLabel?.text = quiz.question
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let myData = swiftConcepts[indexPath.row]
        performSegue(withIdentifier: "detailConceptsSegue", sender: myData)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailConceptsViewController
        detailVC?.detailQA = sender as! Quiz
    }
    
    func makeQuizArray() -> [Quiz] {
        let quizS1 = Quiz()
        
        quizS1.question = "What is an optional?"
        quizS1.answer = "Swift introduces optional types, which handle the absence of a value. Optionals say either “there is a value, and it equals x” or “there isn’t a value at all”. Using optionals is similar to using nil with pointers in Objective-C, but they work for any type, not just classes. Not only are optionals safer and more expressive than nil pointers in Objective-C, they are at the heart of many of Swift’s most powerful features."
        quizS1.category = "Swift Concepts"
        quizS1.author = "Rohit"
        quizS1.number = 1
        
        let quizS2 = Quiz()
        quizS2.question = "What is meant by'type-safe?"
        quizS2.answer = "Swift is a type-safe language, which means the language helps you to be clear about the types of values your code can work with. If part of your code expects a String, type safety prevents you from passing it an Int by mistake. Likewise, type safety prevents you from accidentally passing an optional String to a piece of code that expects a nonoptional String. Type safety helps you catch and fix errors as early as possible in the development process."
        quizS2.category = "Swift Concepts"
        quizS2.author = "Rohit"
        quizS2.number = 2
        
        return [quizS1, quizS2]
    }


}
