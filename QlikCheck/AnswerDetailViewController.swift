//
//  AnswerDetailViewController.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 18/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import UIKit

class AnswerDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var questions = [Questions]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(questions.count)
        return questions.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell", for: indexPath) as! AnswerCell
        print(indexPath.row)
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsets.zero
        cell.layoutMargins = UIEdgeInsets.zero
        print(questions[indexPath.row].question!)
        
        // Configure the cell...
        cell.question.text = "Question: \(questions[indexPath.row].question!)"
        cell.correctAnswer.text = "Correct Option: \(questions[indexPath.row].rightAnswer!)"
        cell.selectedAnswer.text = "You selected: \(questions[indexPath.row].userAnswer!)"
        
        return cell
    }
}
