//
//  InterviewViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/30/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class InterviewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var quizInterview : [Quiz] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        quizInterview = makeQuizArray()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizInterview.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! InterviewTableViewCell
        let quiz = quizInterview[indexPath.row]
        cell.myTextView.text = quiz.question
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myData = quizInterview[indexPath.row]
        performSegue(withIdentifier: "interviewSegue", sender: myData)
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailInterviewViewController
        detailVC?.detailQA = sender as! Quiz
    }
    
    
    func makeQuizArray() -> [Quiz] {
        let quizI1 = Quiz()
        
        quizI1.question = "Q1: What is the value of len?" + "\n\n" + "var array1 = [1, 2, 3, 4, 5];" + "\n\n" + "var array2 = array1; array2.append(6);" + "\n\n" + "var len = array1.count."
        quizI1.answer = "A1: The len variable is equal to 5, meaning that array1 has 5 elements, whereas array2 has 6 elements. When array1 is assigned to array2, a copy of array1 is actually created and assigned. The reason is that swift arrays are value types (implemented as structs) and not reference types (i.e. classes)." + "\n\n" + "When a value type is assigned to a variable, passed as argument to a function or method, or otherwise moved around, a copy of it is actually created and assigned or passed. Note that swift dictionaries are also value types, implemented as structs."
        quizI1.category = "Interview Questions"
        quizI1.author = "Rohit"
        quizI1.number = 1
        
        let quizI2 = Quiz()
        quizI2.question = "Q2: In Swift enumerations, what’s the difference between raw values and associated values?"
        quizI2.answer = "A2: Raw values are used to associate constant (literal) values to enum cases. The value type is part of the enum type, and each enum case must specify a unique raw value (duplicate values are not allowed)."
        quizI2.category = "Interview Questions"
        quizI2.author = "Rohit"
        quizI2.number = 2
        
        let quizI3 = Quiz()
        quizI3.question = "Q3: Consider the following" + "\n\n" + "var optional1: String? = nil" + "\n\n" + "var optional2: String? = .None" + "\n\n" + "What’s the difference between nil and .None? How do the optional1 and optional2 variables differ?"
        quizI3.answer = "A3: There is no difference. Optional.None (.None for short) is the correct way of initializing an optional variable lacking a value, whereas nil is just syntactic sugar for .None." + "\n\n" + "In fact, this statement outputs true:" + "\n\n" + "nil == .None // On Swift 1.x this doesn't compile. You need Optional<Int>.None"
        quizI3.category = "Interview Questions"
        quizI3.author = "Rohit"
        quizI3.number = 3
        
        let quizI4 = Quiz()
        quizI4.question = "Q4: Explain what is optional chaining."
        quizI4.answer = "A4: Optional chaining is a process of querying and calling properties. Multiple queries can be chained together, and if any link in the chain is nil then, the entire chain fails." + "\n\n" + "Ex: let candname = cand.candidate!.name"
        quizI4.category = "Interview Questions"
        quizI4.author = "Rohit"
        quizI4.number = 4
        
        let quizI5 = Quiz()
        quizI5.question = "Q5: Explain what Lazy stored properties is and when it is useful."
        quizI5.answer = "A4: Lazy initialization (also sometimes called lazy instantiation, or lazy loading) is a technique for delaying the creation of an object or some other expensive process until it’s needed. When programming for iOS, this is helpful to make sure you utilize only the memory you need when you need it. Lazy properties are often useful when the initial value for a property is reliant on outside factors whose values are unknown." + "\n\n" + "lazy var importer = DataImporter()"
        quizI5.category = "Interview Questions"
        quizI5.author = "Rohit"
        quizI5.number = 5
        
        let quizI6 = Quiz()
        quizI6.question = "Q6: What are extensions?"
        quizI6.answer = "A6: Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code." + "\n\n" + "extension Double {var km: Double { return self * 1_000.0 }}"
        quizI6.category = "Interview Questions"
        quizI6.author = "Rohit"
        quizI6.number = 6
        
        let quizI7 = Quiz()
        quizI7.question = "Q7: Explain the difference between extension and subclassing."
        quizI7.answer = "A7: Ex: UITextField. If you are adding general-purpose functionalities that should be available to every UITextField, then use extension." + "\n\n" + "If you are adding functionality that should be restricted to special instances of UITextField, then use a subclass."
        quizI7.category = "Interview Questions"
        quizI7.author = "Rohit"
        quizI7.number = 7
        
        let quizI8 = Quiz()
        quizI8.question = "Q8: What is a protocol?"
        quizI8.answer = "A8: Protocols are similar to interfaces in other languages. A protocol specifies a set of behaviours that something should implement, without providing the implementation for those behaviours."
        quizI8.category = "Interview Questions"
        quizI8.author = "Rohit"
        quizI8.number = 8
        
        let quizI9 = Quiz()
        quizI9.question = "Q9: Compare Protocol in Swift vs Interface in Java."
        quizI9.answer = "A9: Swift protocols can also specify properties that must be implemented (i.e. fields)" + "\n\n" + "Swift protocols need to deal with value/reference through the use of the mutating keyword (because protocols can be implemented by structs and classes)" + "\n\n" + "you can combine protocols at any point with the protocol<> keyword. For example, declaring a function parameter that must adhere to protocol A and B as:" + "\n\n" + "func foo ( var1 : protocol<A, B> ){}"
        quizI9.category = "Interview Questions"
        quizI9.author = "Rohit"
        quizI9.number = 9
        
        return [quizI1, quizI2, quizI3, quizI4, quizI5, quizI6, quizI7, quizI8]
    }

}
