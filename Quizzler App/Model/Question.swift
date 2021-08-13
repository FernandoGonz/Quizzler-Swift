//
//  Question.swift
//  Quizzler App
//
//  Created by Fernando González on 12/08/21.
//

import Foundation

struct Question {
    let question: String
    let answer: Bool
    
    init(question: String, answer: Bool) {
        self.question = question
        self.answer = answer
    }
}
