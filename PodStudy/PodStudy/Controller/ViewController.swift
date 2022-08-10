//
//  ViewController.swift
//  PodStudy
//
//  Created by Stephen Chen on 5/21/19.
//  Copyright © 2019 SC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let allQuestions = QuestionBank()
    var pickedAnswer : String = ""
    var questionNumber : Int = 0
    var score : Int = 0

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        allQuestions.list.shuffle() // Randomly shuffles questions
        progressLabel.text = "\(score) / \(allQuestions.list.count)"
        nextQuestion()
    }

    @IBAction func questionAnswers(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = allQuestions.list[questionNumber].answerList[0]
        }
        else if sender.tag == 2 {
            pickedAnswer = allQuestions.list[questionNumber].answerList[1]
        }
        else if sender.tag == 3 {
            pickedAnswer = allQuestions.list[questionNumber].answerList[2]
        }
        else if sender.tag == 4 {
            pickedAnswer = allQuestions.list[questionNumber].answerList[3]
        }
        
        checkAnswers()
        progressLabel.text = "\(score) / \(allQuestions.list.count)"
        questionNumber += 1
        nextQuestion()
        
    }
    
    func nextQuestion() {
        
        if questionNumber < allQuestions.list.count {
            questionLabel.text = allQuestions.list[questionNumber].questionText

            firstButton.setTitle(allQuestions.list[questionNumber].answerList[0], for: .normal)//change button labels
            secondButton.setTitle(allQuestions.list[questionNumber].answerList[1], for: .normal)
            thirdButton.setTitle(allQuestions.list[questionNumber].answerList[2], for: .normal)
            fourthButton.setTitle(allQuestions.list[questionNumber].answerList[3], for: .normal)
            
        questionLabel.numberOfLines = 0
        firstButton.titleLabel?.numberOfLines = 0;
        firstButton.titleLabel?.adjustsFontSizeToFitWidth = true
        firstButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
            
        secondButton.titleLabel?.numberOfLines = 0;
        secondButton.titleLabel?.adjustsFontSizeToFitWidth = true
        secondButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
            
        thirdButton.titleLabel?.numberOfLines = 0;
        thirdButton.titleLabel?.adjustsFontSizeToFitWidth = true
        thirdButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
            
        fourthButton.titleLabel?.numberOfLines = 0;
        fourthButton.titleLabel?.adjustsFontSizeToFitWidth = true
        fourthButton.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        }
        else {
            startOver()
        }
    }
    
    func checkAnswers() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            score += 1
        }
        else {

        }
    }
    
    func startOver() {
        score = 0
        questionNumber = 0
        nextQuestion()
    }
}

