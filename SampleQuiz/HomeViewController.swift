//
//  HomeViewController.swift
//  SampleQuiz
//
//  Created by Decagon on 26/06/2021.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    let question: [String] = [
        "What is 7+7?",
    "What is the capital of Vermont?",
    "What is cognac made from?",
"What is the name of the Stack that makes use of class 5",
 "How many Decadevs are in the iOS Stack?",
 "How many male Decadevs are there in the iOS Stack?",
 "How many female Decadevs are there in the iOS Stack?"
    ]
    
    let answer: [String] = [
        "14",
      "Montpelier",
      "Grapes",
     "iOS Stack",
        "9",
        "7",
        "2"
    ]
     
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = question[currentQuestionIndex]
        view.backgroundColor = .systemPink
        
    
    }

    @IBAction func showNewQuestion(_ sender: UIButton) {
        
        currentQuestionIndex += 1
        
        if currentQuestionIndex == question.count{
            
            
        currentQuestionIndex = 0
            
        }
        
        questionLabel.text = question[currentQuestionIndex]
        
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer (_ sender: UIButton) {
        print("Button tap")
        
        answerLabel.text = answer[currentQuestionIndex]
    }
    
}

