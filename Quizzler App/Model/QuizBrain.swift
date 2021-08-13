//
//  QuizBrain.swift
//  Quizzler App
//
//  Created by Fernando González on 13/08/21.
//

import Foundation

struct QuizBrain {
    
    var questionNumber: Int = 0
    
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
    
    func getQuestion() -> String {
        return questionsArray[questionNumber].question
    }
    
    func getCount() -> Int {
        return questionsArray.count
    }
    
    func checkAnswer(answer: Bool) -> Bool {
        return answer == questionsArray[questionNumber].answer ? true : false
    }
    
    
    
}
