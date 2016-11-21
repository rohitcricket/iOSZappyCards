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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommonTableViewCell
        let quiz = swiftConcepts[indexPath.row]
        cell.myTextView.text = quiz.question
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
        
        quizS1.question = "Q1: What is an optional?"
        quizS1.answer = "A1: Swift introduces optional types, which handle the absence of a value." + "\n\n" + "Optionals say either “there is a value, and it equals x” or “there isn’t a value at all." + "\n\n" + "Using optionals is similar to using nil with pointers in Objective-C, but they work for any type, not just classes." + "\n\n" + "Optionals safer and more expressive than nil pointers in Objective-C"
        quizS1.category = "Swift Concepts"
        quizS1.author = "Rohit"
        quizS1.number = 1
        
        let quizS2 = Quiz()
        quizS2.question = "Q2: What is meant by 'type-safe'?"
        quizS2.answer = "A2: Swift is a type-safe language, which means the language helps you to be clear about the types of values your code can work with." + "\n\n" + "Type safety helps you catch and fix errors as early as possible in the development process."
        quizS2.category = "Swift Concepts"
        quizS2.author = "Rohit"
        quizS2.number = 2
        
        let quizS3 = Quiz()
        quizS3.question = "Q3: What is the key difference between Class and Struct?"
        quizS3.answer = "A3: Struct instances are always passed by value, while class instances are always passed by reference."
        quizS3.category = "Swift Concepts"
        quizS3.author = "Rohit"
        quizS3.number = 3
        
        let quizS4 = Quiz()
        quizS4.question = "Q4: When would you prefer a struct over a class?"
        quizS4.answer = "A4: Structs are preferable if they are relatively small and copiable because copying is way safer than having multiple reference to the same instance as happens with classes." + "\n\n" + "With Structs there is no need to worry about memory leaks or multiple threads racing to access/modify a single instance of a variable."
        quizS4.category = "Swift Concepts"
        quizS4.author = "Rohit"
        quizS4.number = 4
        
        let quizS5 = Quiz()
        quizS5.question = "Q5: What is a closure?"
        quizS5.answer = "A5: Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages." + "\n\n" + "Closures can capture and store references to any constants and variables from the context in which they are defined. This is known as closing over those constants and variables."
        quizS5.category = "Swift Concepts"
        quizS5.author = "Rohit"
        quizS5.number = 5
        
        let quizS6 = Quiz()
        quizS6.question = "Q6: What are examples of closures?"
        quizS6.answer = "A6: Global functions are closures that have a name and do not capture any values." + "\n\n" + "Nested functions are closures that have a name and can capture values from their enclosing function." + "\n\n" + "Closure expressions are unnamed closures written in a lightweight syntax that can capture values from their surrounding context."
        quizS6.category = "Swift Concepts"
        quizS6.author = "Rohit"
        quizS6.number = 6
        
        let quizS7 = Quiz()
        quizS7.question = "Q7: Write an example of Inheritance"
        quizS7.answer = "A7: class Vehicle {" + "\n" + "var currentSpeed = 0.0 }" + "\n" + "class Bicycle:  Vehicle { var hasBasket = true}."
        quizS7.category = "Swift Server Concepts"
        quizS7.author = "Rohit"
        quizS7.number = 7
        
        return [quizS1, quizS2, quizS3, quizS4, quizS5, quizS6, quizS7]
    }


}
