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
    one.optionA = "option A"
    one.optionB = "option B"
    one.optionC = "option C"
    one.optionD = "option D"
    
    one.explanation = "Its Explaination"
    one.rightAnswer = "optionA"
    
    questions.append(one)
    
    // 2
    let two = Questions()
    two.question = "testing question 2 "
    two.optionA = "option A"
    two.optionB = "option B"
    two.optionC = "option C"
    two.optionD = "option D"

    two.explanation = "Its Explaination"
    two.rightAnswer = "optionA"

    questions.append(two)
    
    // 3
    let three = Questions()
    three.question = "testing question 3 "
    three.optionA = "option A"
    three.optionB = "option B"
    three.optionC = "option C"
    three.optionD = "option D"

    three.explanation = "Its Explaination"
    three.rightAnswer = "optionA"
    
    questions.append(three)
    
    // 4
    let four = Questions()
    four.question = "testing question 4 "
    four.optionA = "option A"
    four.optionB = "option B"
    four.optionC = "option C"
    four.optionD = "option D"

    four.explanation = "Its Explaination"
    four.rightAnswer = "optionA"
    
    questions.append(four)
    
    // 5
    let five = Questions()
    five.question = "testing question 5 "
    five.optionA = "option A"
    five.optionB = "option B"
    five.optionC = "option C"
    five.optionD = "option D"

    five.explanation = "Its Explaination"
    five.rightAnswer = "optionA"
    
    questions.append(five)
    
    
    return questions
    
}
