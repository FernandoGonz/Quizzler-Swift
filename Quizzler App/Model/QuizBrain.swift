//
//  QuizBrain.swift
//  Quizzler App
//
//  Created by Fernando González on 13/08/21.
//

import Foundation

struct QuizBrain {
    
    private var questionNumber: Int = 0
    
    private var score: Int = 0
    
    private let questionsArray: [Question] = [
        Question(question: "A slug's blood is green.", answer: true),
        Question(question: "Approximately one quarter of human bones are in the feet.", answer: true),
        Question(question: "The total surface area of two human lungs is approximately 70 square metres.", answer: true),
        Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: true),
        Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: false),
        Question(question: "It is illegal to pee in the Ocean in Portugal.", answer: true),
        Question(question: "You can lead a cow down stairs but not up stairs.", answer: false),
        Question(question: "Google was originally called 'Backrub'.", answer: true),
        Question(question: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: true),
        Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: false),
        Question(question: "No piece of square dry paper can be folded in half more than 7 times.", answer: false),
        Question(question: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: true)
    ]
    
    /** Restart the index of the Quizz.*/
    mutating func restartIndex() {
        self.questionNumber = 0
        self.score = 0
    }
    
    /** Get the next question of the Quizz */
    mutating func nextQuestion() {
        if self.getCurrentIndex() + 1 < self.getCount() {
            self.questionNumber += 1
        } else {
            self.restartIndex()
        }
    }
    
    /** Get the current index of the Quizz. An Int is returned.*/
    func getCurrentIndex() -> Int {
        return self.questionNumber
    }
    
    /** This method alow us to get the next question of the Quizz. A String is returned.*/
    func getQuestionText() -> String {
        return self.questionsArray[self.questionNumber].question
    }
    
    /** This method alow us to get de count of the Quizz. An Integer is returned. */
    func getCount() -> Int {
        return self.questionsArray.count
    }
    
    /** This method validates if the answer's user is correct. An answer: Bool is required. A Bool is returned. */
    mutating func checkAnswer(answer: Bool) -> Bool {
        // We need to check if is rigth, the score needs to up one
        
        if answer == self.questionsArray[self.questionNumber].answer {
            self.score += 1
            return true
        } else {
            return false
        }
        
        /* return answer == self.questionsArray[self.questionNumber].answer ? true : false */
        
    }
    
    /** Get the progress from the Quizz. A Float is returned. */
    func getProgress() -> Float {
        return (Float(self.questionNumber + 1) / Float(self.getCount()))
    }
    
    /** Method to get the score from the Quiz. A String is returned. */
    func getScore() -> Int {
        return score
    }
    
    
    
}
