//
//  DataModeling.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 14/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation


func DataModeling() -> [Questions] {
    
    var questions = [Questions]()
    
    // MARK: Questions
    
    
    // 1 
    let one = Questions()
    one.question = "testing question 1 "
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "testing question 2 "

    questions.append(two)
    
    return questions
    
}
