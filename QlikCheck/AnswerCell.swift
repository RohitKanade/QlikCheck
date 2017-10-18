//
//  AnswerCell.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 18/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import UIKit

class AnswerCell: UITableViewCell {

    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var correctAnswer: UILabel!
    @IBOutlet weak var selectedAnswer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
