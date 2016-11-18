//
//  InterviewTableViewCell.swift
//  Zappy Cards
//
//  Created by ROHIT GUPTA on 11/17/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class InterviewTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var myTextView: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
