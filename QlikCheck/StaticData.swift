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
            
        case "Set Analysis":
            return SetAnalysis()
            
        case "Scripts":
            return Scripts()
            
        case "Qlik Server-Publisher":
            return QlikServerPublisher()
            
        case "Practice Exam 01":
            return PracticeExam01()
        
        case "QlikSense Server":
            return QlikSenseServer()
            
        case "NPrinting Questions":
            return NPrintingQuestions()
            
        case "Qlik Functions":
            return QlikFunctions()
            
        default:
            return questions
        }
    }
    
}
