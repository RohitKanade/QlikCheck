//
//  CoursesViewController.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 07/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import UIKit
import CoreData


class CoursesViewController: UITableViewController {

    
    var courses:[String] = []
    var selectedCourse = ""
    let StaticDtata = StaticData();

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let inset = UIEdgeInsetsMake(20, 0, 0, 0);
        self.tableView.contentInset = inset;
        
        // Read the courses 
        courses = StaticDtata.getCourses()
        print(courses)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(courses.count)
        return courses.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath) as! CourseCell

        // Configure the cell...
        print(courses[indexPath.row])
        cell.name.text = courses[indexPath.row]
        cell.icon.image = UIImage(named:cell.name.text!)!

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(courses[indexPath.row])
        selectedCourse = courses[indexPath.row]
        performSegue(withIdentifier: "questionSeque", sender: self)

    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using .
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "questionSeque" {
            // Setup new view controller
            let controller = segue.destination as! QuestionViewController
            controller.questions = StaticDtata.getQuestions(course: selectedCourse)
        }
    }

}
