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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myData = quizAlgo[indexPath.row]
        performSegue(withIdentifier: "detailAlgoSegue", sender: myData)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailAlgoViewController
        detailVC?.detailQA = sender as! Quiz
    }
    
    func makeQuizArray() -> [Quiz] {
    
        let quizA1 = Quiz()
        
        quizA1.question = "Q1: Assume you’re building a simple service that lists a group of students. Create a Linked List to represent the service."
        quizA1.answer = "A1: class StudentNode { var key: Students? var next: StudentNode? }"
        quizA1.category = "Linked List"
        quizA1.author = "Rohit"
        quizA1.number = 1
        
        let quizA2 = Quiz()
        quizA2.question = "Q2: Refactor the above using generics."
        quizA2.answer = "A2: class LLNode<T> { var key: T? var next: LLNode<T>? }"
        quizA2.category = "Linked List"
        quizA2.author = "Rohit"
        quizA2.number = 2
        
        let quizA3 = Quiz()
        quizA3.question = "Q3: Write a Stack Data Structure in Swift."
        quizA3.answer = "A3: - struct Stack<Element> {var items = [Element]() mutating func push(_ item: Element) {items.append(item)} mutating func pop() -> Element {return items.removeLast()}}"
        quizA3.category = "Stack"
        quizA3.author = "Rohit"
        quizA3.number = 3
        
        return [quizA1, quizA2, quizA3]
    
    }

}
