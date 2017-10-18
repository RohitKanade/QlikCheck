//
//  QuestionViewController.swift
//  QlikCheck
//
//  Created by Rohit Kanade on 14/10/17.
//  Copyright © 2017 QlikCheck. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    
    
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var showAnsBtn: UIButton!
    
    var totalQuestion = 0, currentCount = 0

    var questions = [Questions]()
    var currentQuestion:Questions? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(questions)
        
        totalQuestion = questions.count
        currentQuestion = questions[currentCount]

        
        setQuestion(currentQuestion: currentQuestion!)
        
        // Hide
        hide()
        
    }
    
    func hide() {
        nextBtn.isHidden = true
        showAnsBtn.isHidden = true
    }
    
    func show(){
        nextBtn.isHidden = false
        showAnsBtn.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setQuestion(currentQuestion : Questions)  {
        counter.text = "Questions \(currentCount+1) of \(totalQuestion)"
        question.text = "\(String(describing: currentQuestion.question!))"
        optionA.setTitle("A: \(String(describing: currentQuestion.optionA!))", for: .normal)
        optionB.setTitle("B: \(String(describing: currentQuestion.optionB!))", for: .normal)
        optionC.setTitle("C: \(String(describing: currentQuestion.optionC!))", for: .normal)
        optionD.setTitle("D: \(String(describing: currentQuestion.optionD!))", for: .normal)
    }
    
    
    // Answer selected
    @IBAction func OptionASelected(_ sender: Any) {
        show()
        optionA.backgroundColor = UIColor.cyan
        
        optionB.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionC.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionD.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        
        // user selected answer
        questions[currentCount].userAnswer = questions[currentCount].optionA
    }

    @IBAction func OptionBSelected(_ sender: Any) {
        show()
        optionB.backgroundColor = UIColor.cyan
        
        optionA.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionC.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionD.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        
        // user selected answer
        questions[currentCount].userAnswer = questions[currentCount].optionB
    }
    
    @IBAction func OptionCSelected(_ sender: Any) {
        show()
        optionC.backgroundColor = UIColor.cyan
        
        optionA.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionB.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionD.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        
        // user selected answer
        questions[currentCount].userAnswer = questions[currentCount].optionC
    }

    @IBAction func OptionDSelected(_ sender: Any) {
        show()
        optionD.backgroundColor = UIColor.cyan
        
        optionB.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionC.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionA.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        
        // user selected answer
        questions[currentCount].userAnswer = questions[currentCount].optionD
    }
    
    // Show Answer
    @IBAction func ShowAnswer(_ sender: Any) {
    showCurrectAnswer()
    }
    
    func showCurrectAnswer(){
      
        if (questions[currentCount].rightAnswer! == questions[currentCount].optionA!){
            optionA.backgroundColor = UIColor.green
        }else if(questions[currentCount].rightAnswer! == questions[currentCount].optionB!){
            optionB.backgroundColor = UIColor.green
        }else if (questions[currentCount].rightAnswer! == questions[currentCount].optionC!){
            optionC.backgroundColor = UIColor.green
        }else if (questions[currentCount].rightAnswer! == questions[currentCount].optionD!){
            optionD.backgroundColor = UIColor.green
        }
    }
    
    // Next
    @IBAction func NextSelected(_ sender: Any) {
        hide()
        currentCount = currentCount+1
        print(currentCount)
        
        if (currentCount+1) > totalQuestion{
            performSegue(withIdentifier: "resultSeque", sender: self)
            
        }else{
            currentQuestion = questions[currentCount]
            setQuestion(currentQuestion: currentQuestion!)
        }
        
        optionA.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionB.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionC.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
        optionD.backgroundColor = hexStringToUIColor(hex: "F9F9F9")
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using .
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "resultSeque" {
            // Setup new view controller
            let controller = segue.destination as! ResultViewController
            controller.questions = questions
        }
    }
}
