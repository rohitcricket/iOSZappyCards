//
//  DetailPatternViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 11/3/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class DetailPatternViewController: UIViewController {
    
    
    @IBOutlet weak var questionTextView: UITextView!
    
    
    @IBOutlet weak var answerTextView: UITextView!
    
    
    var detailQA = Quiz()

    override func viewDidLoad() {
        super.viewDidLoad()

        questionTextView.text = detailQA.question
        answerTextView.text = detailQA.answer
    }



}
