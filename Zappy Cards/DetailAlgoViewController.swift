//
//  DetailAlgoViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/30/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class DetailAlgoViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var detailQA = Quiz()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = detailQA.question
        answerLabel.text = detailQA.answer
    }


}
