//
//  AlgorithmsViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/30/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class AlgorithmsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var quizAlgo : [Quiz] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        quizAlgo = makeQuizArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizAlgo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let quiz = quizAlgo[indexPath.row]
        cell.textLabel?.text = quiz.question
        return cell
    }
    
    func makeQuizArray() -> [Quiz] {
    
        let quizA1 = Quiz()
        
        quizA1.question = "Q1: Assume you’re building a simple service that lists a group of students. Create a Linked List to represent the service."
        quizA1.answer = "class StudentNode { var key: Students? var next: StudentNode? }"
        quizA1.category = "Linked List"
        quizA1.author = "Rohit"
        quizA1.number = 1
        
        let quizA2 = Quiz()
        quizA2.question = "Q2: Refactor the above using generics."
        quizA2.answer = "class LLNode<T> { var key: T? var next: LLNode<T>? }"
        quizA2.category = "Linked List"
        quizA2.author = "Rohit"
        quizA2.number = 2
        
        return [quizA1, quizA2]
    
    }

}
