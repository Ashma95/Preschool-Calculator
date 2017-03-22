//
//  ViewController.swift
//  preschoolCalculator app
//
//  Created by Ashma Gurung on 14/03/2017.
//  Copyright © 2017 Hertfordshire. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var cloud1: UIImageView!
  
    @IBOutlet weak var plate: UIImageView!
    
    @IBOutlet weak var playbutton: UIButton!
    @IBOutlet weak var Background: UIImageView!
    @IBOutlet weak var star: UIImageView!
    
    @IBOutlet weak var star1: UIImageView!
    
    @IBOutlet weak var star2: UIImageView!
    let W = UIScreen.main.bounds.width
    let H = UIScreen.main.bounds.height
   
    func displayLayout(){
        
        //background
        self.Background.frame = CGRect(x: 0, y: 0, width : self.W, height: self.H)
        
        //cloud
        self.cloud1.frame = CGRect(x: self.W * 0.3, y: self.H * 0.05, width: self.W * 0.3, height: self.W * 0.15)
        

        //buttons
        self.Button0.frame = CGRect(x: self.W * 0.07, y: self.H * 0.2, width: self.W * 0.15, height: self.W * 0.15)
        self.Button1.frame = CGRect(x: self.W * 0.24, y: self.H * 0.2, width: self.W * 0.15, height: self.W * 0.15)
        self.Button2.frame = CGRect(x: self.W * 0.41, y: self.H * 0.2, width: self.W * 0.15, height: self.W * 0.15)
        self.Button3.frame = CGRect(x: self.W * 0.58, y: self.H * 0.2, width: self.W * 0.15, height: self.W * 0.15)
        self.Button4.frame = CGRect(x: self.W * 0.75, y: self.H * 0.2, width: self.W * 0.15, height: self.W * 0.15)
        self.Button5.frame = CGRect(x: self.W * 0.07, y: self.H * 0.3, width: self.W * 0.15, height: self.W * 0.15)
        self.Button6.frame = CGRect(x: self.W * 0.24, y: self.H * 0.3, width: self.W * 0.15, height: self.W * 0.15)
        self.Button7.frame = CGRect(x: self.W * 0.41, y: self.H * 0.3, width: self.W * 0.15, height: self.W * 0.15)
        self.Button8.frame = CGRect(x: self.W * 0.58, y: self.H * 0.3, width: self.W * 0.15, height: self.W * 0.15)
        self.Button9.frame = CGRect(x: self.W * 0.75, y: self.H * 0.3, width: self.W * 0.15, height: self.W * 0.15)

        //question label
         self.question.frame = CGRect(origin: CGPoint(x: self.W * 0.3, y: self.H * 0.4), size: CGSize(width: self.W * 0.8, height: self.H * 0.1))
        
        //apples
         self.apple1.frame = CGRect(x: self.W * 0.20, y: self.H * 0.22, width: self.W * 0.14, height: self.W * 0.14)
         self.apple2.frame = CGRect(x: self.W * 0.25, y: self.H * 0.18, width: self.W * 0.14, height: self.W * 0.14)
         self.apple3.frame = CGRect(x: self.W * 0.35, y: self.H * 0.18, width: self.W * 0.14, height: self.W * 0.14)
         self.apple4.frame = CGRect(x: self.W * 0.45, y: self.H * 0.18, width: self.W * 0.14, height: self.W * 0.14)
         self.apple5.frame = CGRect(x: self.W * 0.55, y: self.H * 0.18, width: self.W * 0.14, height: self.W * 0.14)
         self.apple6.frame = CGRect(x: self.W * 0.3, y: self.H * 0.22, width: self.W * 0.14, height: self.W * 0.14)
         self.apple7.frame = CGRect(x: self.W * 0.4, y: self.H * 0.22, width: self.W * 0.14, height: self.W * 0.14)
         self.apple8.frame = CGRect(x: self.W * 0.5, y: self.H * 0.22, width: self.W * 0.14, height: self.W * 0.14)
         self.apple9.frame = CGRect(x: self.W * 0.6, y: self.H * 0.22, width: self.W * 0.14, height: self.W * 0.14)
        
        //plate
        self.plate.frame = CGRect(x: self.W * 0.08, y: self.H * 0.17, width: self.W * 0.8, height: self.H * 0.2)
        
        //playbutton
        self.playbutton.frame = CGRect(x: self.W * 0.38, y: self.H * 0.5, width: self.W * 0.2, height: self.H * 0.1)
        
        //star 
         self.star.frame = CGRect(x: self.W * 0.05, y: self.H * 0.25, width: self.W * 0.2, height: self.H * 0.1)
         self.star1.frame = CGRect(x: self.W * 0.70, y: self.H * 0.25, width: self.W * 0.2, height: self.H * 0.1)
         self.star2.frame = CGRect(x: self.W * 0.40, y: self.H * 0.3, width: self.W * 0.2, height: self.H * 0.1)
    }
   
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
    
    func hideStars(){
        self.star.isHidden = true
        self.star1.isHidden = true
        self.star2.isHidden = true
    }
    
    func displayStars(){
        self.star.isHidden = false
        self.star1.isHidden = false
        self.star2.isHidden = false
    }
    
    func hideplayButton(){
        self.playbutton.isHidden = true
    }
    
    func displayplayButton(){
        self.playbutton.isHidden = false
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
    
    //declaring variables for sounds
    var buzzerURL = NSURL (fileURLWithPath: Bundle.main.path(forResource: "buzzer", ofType: "mp3")!)
    var buzzerPlayer = AVAudioPlayer()
    
    var victoryURL = NSURL (fileURLWithPath: Bundle.main.path(forResource: "victory", ofType: "mp3")!)
    var victoryPlayer = AVAudioPlayer()


    @discardableResult func checkAnswer(number: Int)-> Bool{
        if (answer == number) {
            print("true")
            do{
                try victoryPlayer = AVAudioPlayer(contentsOf: victoryURL as URL)
            }catch {
                print( "Correct Answer")
            }
            victoryPlayer.play()
            
            question.text = question.text! + "\(answer)"
            hideApples()
            hideButtons()
            displayStars()
            displayplayButton()
            star.startAnimating()
            star1.startAnimating()
            return true
        }
        else {
            do{
                try buzzerPlayer = AVAudioPlayer(contentsOf: buzzerURL as URL)
            }catch {
                print("Wrong answer")
            }
             buzzerPlayer.play()
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
        hideStars()
        self.displayLayout()
    }
    
    func cloud1Animation(){
        let cloudMovingSpeed = 10.0/view.frame.size.width
        let duration = (view.frame.size.width - cloud1.frame.origin.x) * cloudMovingSpeed
        UIView.animate(withDuration: TimeInterval(duration), delay: 0.0, options: [UIViewAnimationOptions.curveLinear], animations:{
            self.cloud1.alpha = 1.0
            self.cloud1.frame.origin.x = self.view.frame.size.width
        }, completion: {_ in
            self.cloud1.frame.origin.x = -self.cloud1.frame.size.width
            self.cloud1Animation()
        })
    }
    
    func appleAnimation(){
        UIView.animate(withDuration: 4.0, delay: 0.8, usingSpringWithDamping: 2.0, initialSpringVelocity: 10, options: [], animations:{
            self.apple1.center.x += self.view.frame.width
            
        }, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //apple animation
        apple1.center.x += self.view.frame.width

        //star animation
        let imageNames = ["star_kids.png", "star_kids 1.png", "star_kids 3.png"]
        var images = [UIImage]()
        
        for i in 0..<imageNames.count{
            images.append(UIImage(named: imageNames[i])!)
        }
        star.animationImages = images
        star.animationDuration = 1.0
        star.startAnimating()
        
        star1.animationImages = images
        star1.animationDuration = 0.5
        star1.startAnimating()
        
        star2.animationImages = images
        star2.animationDuration = 1.5
        star2.startAnimating()
        
        hideStars()
        hideplayButton()
        randomNumber()
        appleAnimation()
        self.displayLayout()
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
       cloud1Animation()
    }
   
}

