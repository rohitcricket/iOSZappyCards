//
//  ViewController.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 10/29/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var swiftButton: UIButton! {
        didSet{
            swiftButton.layer.borderWidth = 1
            swiftButton.layer.masksToBounds = false
            swiftButton.layer.cornerRadius = swiftButton.frame.height/2
            swiftButton.clipsToBounds = true
        }
    }
    
    
    @IBOutlet weak var xcodeButton: UIButton! {
        didSet{
            xcodeButton.layer.borderWidth = 1
            xcodeButton.layer.masksToBounds = false
            xcodeButton.layer.cornerRadius = xcodeButton.frame.height/2
            xcodeButton.clipsToBounds = true
        }
    }
    
    
    @IBOutlet weak var algoButton: UIButton! {
        didSet{
            algoButton.layer.borderWidth = 1
            algoButton.layer.masksToBounds = false
            algoButton.layer.cornerRadius = algoButton.frame.height/2
            algoButton.clipsToBounds = true
        }
    }
    
    
    @IBOutlet weak var interviewButton: UIButton! {
        didSet{
            interviewButton.layer.borderWidth = 1
            interviewButton.layer.masksToBounds = false
            interviewButton.layer.cornerRadius = interviewButton.frame.height/2
            interviewButton.clipsToBounds = true
        }
    }
    
    
    @IBOutlet weak var designButton: UIButton! {
        didSet{
            designButton.layer.borderWidth = 1
            designButton.layer.masksToBounds = false
            designButton.layer.cornerRadius = designButton.frame.height/2
            designButton.clipsToBounds = true
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

