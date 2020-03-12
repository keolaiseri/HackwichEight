//
//  ViewController.swift
//  HackwichEight
//
//  Created by Keola Iseri on 3/10/20.
//  Copyright © 2020 Keola Iseri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    
    var targetValue: Int = 0
    
    @IBOutlet weak var targetLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in: 0...100)
    
        startNewRound()
    
    }

    
    @IBAction func guessNumberPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
       startNewRound()
   
    }


    
    @IBAction func sliderHasMoved(_ sender: Any) {
    
    print("The value of the slider is: \(slider.value)")
                    //conversion of float to int
        currentValue = lroundf(slider.value)
        
    }
    
        func startNewRound() {
    
            targetValue = Int.random(in: 0...100)
            currentValue = lroundf(slider.value)
        
        }
    
    func TargetLabel() {
        
        let str2 = String(targetValue)
        
        self.targetLabel.text = str2
    
    }
    



}


