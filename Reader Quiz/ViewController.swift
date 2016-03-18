//
//  ViewController.swift
//  Reader Quiz
//
//  Created by Mohib Ibrahim on 3/6/16.
//  Copyright © 2016 Mohib Ibrahim. All rights reserved.
//

import UIKit
struct Question{
    var Question: String!
    var Answers : [String]!
    var Answer : Int!
    
}



class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var QLabel: UILabel!
    @IBOutlet var LabelEnd: UILabel!
    
    var Questions = [Question]()
    var QNumber = Int()
    var AnswerNumber = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Hide()
        Questions = [Question(Question: "What day is my  meeting with Skyler?", Answers: ["Monday","Tuesday","Wednesday","Thursday"], Answer: 0),
            Question(Question: "What day do I leave for Boston?", Answers: ["Monday","Tuesday","Wednesday","Thursday"], Answer: 1),
            Question(Question: "What School do I go to?", Answers: ["Loyola","Xavier","Tulane","Uno"], Answer: 1),
            Question(Question: "What is my favorite Color?", Answers: ["Red","Green","Blue","Orange"], Answer: 2)]
        PickQuestion()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func PickQuestion(){
        Hide()
        if Questions.count>0{
            QNumber = 0
            QLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            Questions.removeAtIndex(QNumber)
            
        }
        else{
            NSLog("Error")
        }

        
    }
    func Hide(){
        LabelEnd.hidden = true
    }
    func UnHide(){
        LabelEnd.hidden = false
    }
    
    func delay(delay: Double, closure: ()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(),
            closure
        )
    }
    
    
    @IBAction func Btn1(sender: AnyObject) {
        
        if AnswerNumber==0{
            UnHide()
            LabelEnd.text = "Congratulations, you are correct!"
            
            
            delay(2.0){
                self.PickQuestion()
                }

            
        }
        else{
            UnHide()
            LabelEnd.text = "I'm Sorry, You are incorrect!"
        }
        
    }
    @IBAction func Btn2(sender: AnyObject) {
        

        if AnswerNumber==1{
            UnHide()
            LabelEnd.text = "Congratulations, you are correct!"

            delay(2.0){
                self.PickQuestion()
            }
        }
        else{
        UnHide()
        LabelEnd.text = " I'm Sorry, You are incorrect!"
        }
    }
    @IBAction func Btn3(sender: AnyObject) {
        

        if AnswerNumber==1{
            UnHide()
            LabelEnd.text = "Congratulations, you are correct!"
            
            delay(2.0){
                self.PickQuestion()
            }
        }
        else{
            UnHide()
            LabelEnd.text = " I'm Sorry, You are incorrect!"
        }
    }
    @IBAction func Btn4(sender: AnyObject) {
        

        if AnswerNumber==2{
            UnHide()
            LabelEnd.text = "Congratulations, you are correct!"
            

        
        }
        else{
            UnHide()
            LabelEnd.text = "I'm Sorry, You are incorrect!"
        }
    }
    


}

