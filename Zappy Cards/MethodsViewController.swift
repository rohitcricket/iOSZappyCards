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

    
    func makeQuizArray() -> [Quiz] {
    
        let quizM1 = Quiz()
        
        quizM1.question = "Q1: What is meant by numberOfRowsInSection in tableView?"
        quizM1.answer = "Swift introduces optional types, which handle the absence of a value. Optionals say either “there is a value, and it equals x” or “there isn’t a value at all”. Using optionals is similar to using nil with pointers in Objective-C, but they work for any type, not just classes. Not only are optionals safer and more expressive than nil pointers in Objective-C, they are at the heart of many of Swift’s most powerful features."
        quizM1.category = "Swift Concepts"
        quizM1.author = "Rohit"
        quizM1.number = 1
        
        let quizM2 = Quiz()
        quizM2.question = "Q2: What does  didSelectRowAt indexPath in tableView do?"
        quizM2.answer = "Swift is a type-safe language, which means the language helps you to be clear about the types of values your code can work with. If part of your code expects a String, type safety prevents you from passing it an Int by mistake. Likewise, type safety prevents you from accidentally passing an optional String to a piece of code that expects a nonoptional String. Type safety helps you catch and fix errors as early as possible in the development process."
        quizM2.category = "Swift Concepts"
        quizM2.author = "Rohit"
        quizM2.number = 2
        
        return [quizM1, quizM2]
    }

}
