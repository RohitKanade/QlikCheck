//
//  ViewController.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 02/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // MARK: ADD DATA IN CORE DATA
        
        
        // Adding Courses
        //let course:Courses = NSEntityDescription.insertNewObject(forEntityName: "Courses", into: DatabaseController.persistentContainer.viewContext) as! Courses

        //course.name = "Data Modeling"
        //course.name = "Set Analysis"
        //course.name = "Qlick Functions"
        
        //DatabaseController.saveContext()
        
        //  fetchCourseRequest
        
        let fetchRequestForCourses: NSFetchRequest<Courses> = Courses.fetchRequest()
        
        do{
            let courseResults = try DatabaseController.getContext().fetch(fetchRequestForCourses)
            for eachCourse in courseResults as [Courses]{
                print(eachCourse.name!)
            }
        }catch{
            
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

