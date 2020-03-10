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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sliderHasMoved(_ sender: Any) {
    
    print("The value of the slider is: \(slider.value)")
                    //conversion of float to int
        currentValue = lroundf(slider.value)
    
    
    }
    
    
    @IBAction func guessNumberPressed(_ sender: Any) {
   
       let message = "The value is: \(currentValue)"
      
        
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
    
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
   
    }

}

