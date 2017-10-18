//
//  ResultViewController.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 18/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultString: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    var questions = [Questions]()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultString.text = "You have currectly answered \(curreectAnswersGiven()) of \(questions.count) questions!"
        
        if (getPercentage() > 80.0){
            resultImage.image = UIImage(named:"gold")
        }else if (getPercentage() > 50.0){
            resultImage.image = UIImage(named:"silver")
        }else{
            resultImage.image = UIImage(named:"bronze")
        }
        
        self.navigationController?.navigationBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getPercentage() -> Float{
        print(curreectAnswersGiven())
        print(questions.count)
        
        
        let correctAns:Float = Float(curreectAnswersGiven())
        let totalQ : Float = Float(questions.count)
        print((correctAns/totalQ)*100)
        
        return ((correctAns/totalQ)*100)
    }
    
    func curreectAnswersGiven() -> Int{
        var cnt = 0
        for each in questions{
            if each.rightAnswer == each.userAnswer{
                cnt = cnt + 1
            }
        }
        return cnt
    }
    @IBAction func viewAnswers(_ sender: Any) {
        performSegue(withIdentifier: "viewAnswerSeque", sender: self)
    }

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "viewAnswerSeque" {
            // Setup new view controller
            let controller = segue.destination as! AnswerDetailViewController
            controller.questions = questions
        }
        
    }
    

}
