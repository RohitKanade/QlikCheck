//
//  StaticData.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 14/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import Foundation

struct StaticData {
    func getCourses() -> [String] {
        
        let courses = ["Data Modeling", "Set Analysis", "Scripts", "Qlik Functions", "Qlik Server-Publisher", "Practice Exam 01", "QlikSense Server", "NPrinting Questions"]
        return courses
    }
    
    func getQuestions( course : String) -> [Questions] {
        
        let questions = [Questions]()
        
        switch course {
        case "Data Modeling":
            return DataModeling()
        default:
            return questions
        }
    }
    
}
