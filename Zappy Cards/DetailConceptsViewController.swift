//
//  DetailConceptsViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/29/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class DetailConceptsViewController: UIViewController {
    
    
    @IBOutlet weak var questionTextField: UITextView! {
        didSet{
            questionTextField.layer.masksToBounds = true
            questionTextField.layer.cornerRadius = 5
            questionTextField.layer.borderWidth = 1.0
            questionTextField.layer.borderColor = UIColor.lightGray.cgColor
        }
    
    }
    
    
    @IBOutlet weak var answerTextField: UITextView! {
        didSet{
            answerTextField.layer.masksToBounds = true
            answerTextField.layer.cornerRadius = 5
            answerTextField.layer.borderWidth = 1.0
            answerTextField.layer.borderColor = UIColor.lightGray.cgColor
        }
        
    }
    
    
    var detailQA = Quiz()

    override func viewDidLoad() {
        super.viewDidLoad()

        questionTextField.text = detailQA.question
        answerTextField.text = detailQA.answer
        
    }

    
}
