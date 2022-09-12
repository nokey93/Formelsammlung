//
//  QuestionController.swift
//  Formelsammlung
//
//  Created by Nguyen Anh Nguyen on 11.09.22.
//

import UIKit

class QuestionController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    // Button and Score Outlet
    @IBOutlet weak var answer1_label: UIButton!
    @IBOutlet weak var answer2_Label: UIButton!
    @IBOutlet weak var answer3_Label: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }
    

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
                
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
                
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
                
        quizBrain.nextQuestion()
        
                
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
    
    }
    
    @objc func updateUI(){
        
        questionLabel.text = quizBrain.getQuestionText()
                
        //Need to fetch the answers and update the button titles using the setTitle method.
        let answerChoices = quizBrain.getAnswers()
        answer1_label.setTitle(answerChoices[0], for: .normal)
        answer2_Label.setTitle(answerChoices[1], for: .normal)
        answer3_Label.setTitle(answerChoices[2], for: .normal)
                
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        // Reset Button
        answer1_label.backgroundColor = UIColor.clear
        answer2_Label.backgroundColor = UIColor.clear
        answer3_Label.backgroundColor = UIColor.clear
        
            
    }
    
    
}


