//
//  ViewController.swift
//  Quizzler App
//
//  Created by Fernando González on 11/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    // QuizBrain Instance
    private var quizBrain: QuizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showQuestion()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        /* We need to get the button pressed True or False */
        
        let userAnswerText = sender.currentTitle! // Get the title of the button ("True" or "False")
        
        let userAnswer: Bool = userAnswerText == "True" ? true : false // If userAnswerText is "True", the user Answer will be true.
        
        
        /* We need to check if the userAnswer is Correct, the background's sender will be green.*/
        sender.backgroundColor = userAnswer == quizBrain.checkAnswer(answer: userAnswer) ? UIColor.green : UIColor.red
        
        print("\(quizBrain.checkAnswer(answer: userAnswer))")
        
        
        quizBrain.nextQuestion()
        
        
        /* We need to pause the program 2 seconds to can view how the color background of the button change */
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(showQuestion), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func showQuestion() {
        questionLabel.text = quizBrain.getQuestionText() // show the question from QuizBrain()
        trueButton.backgroundColor = UIColor.clear // to clear the background color
        falseButton.backgroundColor = UIColor.clear
        scoreLabel.text = "Score: \(quizBrain.getScore()) / \(quizBrain.getCount())"
        progressBar.progress = quizBrain.getProgress()
    }
    
}

