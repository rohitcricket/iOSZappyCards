//
//  DetailConceptsViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/29/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class DetailConceptsViewController: UIViewController {
    
    @IBOutlet weak var qaLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    var detailQA = Quiz()

    override func viewDidLoad() {
        super.viewDidLoad()

        qaLabel.text = detailQA.question
        answerLabel.text = detailQA.answer
        
    }

    
}
