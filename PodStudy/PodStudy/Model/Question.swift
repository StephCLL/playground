//
//  Question.swift
//  PodStudy
//
//  Created by Stephen Chen on 5/22/19.
//  Copyright © 2019 SC. All rights reserved.
//

import Foundation

class Question {
    let questionText : String // for all the questions
    let answer : String // for all the answers
    let answerList : [String]
    
    
    init(text: String, correctAnswer: String, possibleAnswers : [String]) {
        questionText = text
        answer = correctAnswer
        answerList = possibleAnswers
    }
    //Event: initializtion method takes two parameters, Answer expect boolean.
}
