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
        
        quiz1.question = "What is MVC pattern in iOS"
        quiz1.answer = "abc"
        
        let quiz2 = Quiz()
        quiz2.question = "What is a decorator pattern in iOS"
        quiz2.answer = "find it out"
        
        return [quiz1, quiz2]
    }
    
    
}
