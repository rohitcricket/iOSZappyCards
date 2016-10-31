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
        let cell = UITableViewCell()
        let quiz = quizInterview[indexPath.row]
        cell.textLabel?.text = quiz.question
        return cell
    }
    
    func makeQuizArray() -> [Quiz] {
        let quizI1 = Quiz()
        
        quizI1.question = "Q1: What is the value of len? var array1 = [1, 2, 3, 4, 5]; var array2 = array1; array2.append(6); var len = array1.count."
        quizI1.answer = "The len variable is equal to 5, meaning that array1 has 5 elements, whereas array2 has 6 elements. When array1 is assigned to array2, a copy of array1 is actually created and assigned. The reason is that swift arrays are value types (implemented as structs) and not reference types (i.e. classes). When a value type is assigned to a variable, passed as argument to a function or method, or otherwise moved around, a copy of it is actually created and assigned or passed. Note that swift dictionaries are also value types, implemented as structs."
        quizI1.category = "Interview Questions"
        quizI1.author = "Rohit"
        quizI1.number = 1
        
        let quizI2 = Quiz()
        quizI2.question = "Q2: In Swift enumerations, what’s the difference between raw values and associated values?"
        quizI2.answer = "Raw values are used to associate constant (literal) values to enum cases. The value type is part of the enum type, and each enum case must specify a unique raw value (duplicate values are not allowed)."
        quizI2.category = "Interview Questions"
        quizI2.author = "Rohit"
        quizI2.number = 2
        
        return [quizI1, quizI2]
    }

}
