//
//  DetailMethodsViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/30/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class DetailMethodsViewController: UIViewController {
    
    
    @IBOutlet weak var questionTextView: UITextView! {
        didSet{
            questionTextView.layer.masksToBounds = true
            questionTextView.layer.cornerRadius = 5
            questionTextView.layer.borderWidth = 1.0
            questionTextView.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    @IBOutlet weak var answerTextView: UITextView! {
        didSet{
            answerTextView.layer.masksToBounds = true
            answerTextView.layer.cornerRadius = 5
            answerTextView.layer.borderWidth = 1.0
            answerTextView.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    
    var detailQA = Quiz()

    override func viewDidLoad() {
        super.viewDidLoad()

        questionTextView.text = detailQA.question
        answerTextView.text = detailQA.answer
    }



}
