//
//  ViewController.swift
//  preschoolCalculator app
//
//  Created by Ashma Gurung on 14/03/2017.
//  Copyright © 2017 Hertfordshire. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cloud1: UIImageView!
    @IBOutlet weak var cloud2: UIImageView!
    @IBOutlet weak var plate: UIImageView!
    
    //Button Outlets
    @IBOutlet weak var Button0: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    
    func hideButtons(){
        self.Button0.isHidden = true
        self.Button1.isHidden = true
        self.Button2.isHidden = true
        self.Button3.isHidden = true
        self.Button4.isHidden = true
        self.Button5.isHidden = true
        self.Button6.isHidden = true
        self.Button7.isHidden = true
        self.Button8.isHidden = true
        self.Button9.isHidden = true
    }
    
    func displayButtons(){
        self.Button0.isHidden = false
        self.Button1.isHidden = false
        self.Button2.isHidden = false
        self.Button3.isHidden = false
        self.Button4.isHidden = false
        self.Button5.isHidden = false
        self.Button6.isHidden = false
        self.Button7.isHidden = false
        self.Button8.isHidden = false
        self.Button9.isHidden = false
    }

    //Apple Outlets
    
    @IBOutlet weak var apple1: UIImageView!
    @IBOutlet weak var apple2: UIImageView!
    @IBOutlet weak var apple3: UIImageView!
    @IBOutlet weak var apple4: UIImageView!
    @IBOutlet weak var apple5: UIImageView!
    @IBOutlet weak var apple6: UIImageView!
    @IBOutlet weak var apple7: UIImageView!
    @IBOutlet weak var apple8: UIImageView!
    @IBOutlet weak var apple9: UIImageView!
    
    func hideApples(){
        self.apple1.isHidden = true
        self.apple2.isHidden = true
        self.apple3.isHidden = true
        self.apple4.isHidden = true
        self.apple5.isHidden = true
        self.apple6.isHidden = true
        self.apple7.isHidden = true
        self.apple8.isHidden = true
        self.apple9.isHidden = true
        self.plate.isHidden = true
    }
    
    func displayApples(){
        self.apple1.isHidden = false
        self.apple2.isHidden = false
        self.apple3.isHidden = false
        self.apple4.isHidden = false
        self.apple5.isHidden = false
        self.apple6.isHidden = false
        self.apple7.isHidden = false
        self.apple8.isHidden = false
        self.apple9.isHidden = false
        self.plate.isHidden = false
    }
    
    @IBOutlet weak var question: UILabel!
    
    var firstNumber : Int = 0
    var secondNumber : Int = 0
    var answer: Int = 0
    
    //generate random number
    
    func randomNumber (){
        firstNumber = Int(arc4random_uniform(4)) + 1
        secondNumber = Int(arc4random_uniform(4)) + 1
        question.text = "\(firstNumber) + \(secondNumber)="
        answer = firstNumber + secondNumber
    }
    
    @discardableResult func checkAnswer(number: Int)-> Bool{
        if (answer == number) {
            print("true")
            question.text = question.text! + "\(answer)"
            hideApples()
            hideButtons()
            return true
        }
        else {
            return false
        }
    }
    

    @IBAction func numberZero(_ sender: Any) {
        checkAnswer(number: 0)
    }
   
    
    @IBAction func numberOne(_ sender: Any) {
        checkAnswer(number: 1)
    }
    
    
    @IBAction func numberTwo(_ sender: Any) {
        checkAnswer(number: 2)
    }
    
    
    @IBAction func numberThree(_ sender: Any) {
        checkAnswer(number: 3)
    }
    
    
    @IBAction func numberFour(_ sender: Any) {
        checkAnswer(number: 4)
    }
    
    
    @IBAction func numberFive(_ sender: Any) {
        checkAnswer(number: 5)
    }
    
    @IBAction func numberSix(_ sender: Any) {
        checkAnswer(number: 6)
    }
    
    
    @IBAction func numberSeven(_ sender: Any) {
        checkAnswer(number: 7)
    }
    
    
    @IBAction func numberEight(_ sender: Any) {
        checkAnswer(number: 8)
    }
    
    
    @IBAction func numberNine(_ sender: Any) {
        checkAnswer(number: 9)
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        displayButtons()
        displayApples()
        randomNumber()
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

