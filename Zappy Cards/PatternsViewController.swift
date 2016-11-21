//
//  PatternsViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 11/3/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class PatternsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var patternQuiz : [Quiz] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        patternQuiz = makeQuizArray()
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return patternQuiz.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PatternTableViewCell
        let quiz = patternQuiz[indexPath.row]
        cell.myTextView.text = quiz.question
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myData = patternQuiz[indexPath.row]
        performSegue(withIdentifier: "patternSegue", sender: myData)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as? DetailPatternViewController
        detailVC?.detailQA = sender as! Quiz
    }
    
    func makeQuizArray() -> [Quiz] {
        let quiz1 = Quiz()
        quiz1.question = "What is the delegate pattern?"
        quiz1.answer = "A delegate is an object that executes a group of methods on behalf of another object."
        
        let quiz2 = Quiz()
        quiz2.question = "Give an example of a delegate pattern. Why is it a delegation?"
        quiz2.answer = "E.g. When you use a UITableView, one of the methods you must implement is tableView(_:numberOfRowsInSection:). You can’t expect the UITableView to know how many rows you want to have in each section, as this is application-specific. Therefore, the task of calculating the amount of rows in each section is passed on to the UITableView delegate. This allows the UITableView class to be independent of the data it displays."
        
        
        let quiz3 = Quiz()
        quiz3.question = "What is a protocol in iOS development?"
        quiz3.answer = "Protocols are similar to interfaces in other languages. A protocol specifies a set of behaviours that something should implement, without providing the implementation for those behaviours."
        
        let quiz4 = Quiz()
        quiz4.question = "Can you give an analogy of a protocol?"
        quiz4.answer = "Human Ear. The sounds involved in speech can be received by any ear that is tuned to the frequency range of the speaker. Electric plug. Any object that implements a standard electric plug protocol can receive electricity from a corresponding socket. Note that different regions of the world implement the electric plug protocol in different ways, but they all share basic components."
        
        return [quiz1, quiz2, quiz3]
    }
    
    
}
