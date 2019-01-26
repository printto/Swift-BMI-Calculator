//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Pappim Pipatkasrira on 24/1/2562 BE.
//  Copyright © 2562 Pappim Pipatkasrira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bmiText: UILabel!
    @IBOutlet weak var categoryText: UILabel!
    @IBOutlet weak var heightInput: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var bmiImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: UIButton) {
        let height = Double(heightInput.text!)
        let weight = Double(weightInput.text!)
        if height != nil && weight != nil{
            let bmi_result = weight! / pow((height!/100), 2)
            bmiText.text = "Your BMI is " + String(bmi_result)
            if bmi_result < 18.5 {
                categoryText.text = "Underweight"
                categoryText.textColor = UIColor.init(red: 0.3098, green: 0.8039, blue: 1, alpha: 1.0)
                bmiImage.image = UIImage(named: "b1.png")
            }
            else if bmi_result < 24.9 {
                categoryText.text = "Normal"
                categoryText.textColor = UIColor.init(red: 0.3098, green: 1, blue: 0.698, alpha: 1.0)
                bmiImage.image = UIImage(named: "b2.png")
            }
            else if bmi_result < 29.9 {
                categoryText.text = "Overweight"
                categoryText.textColor = UIColor.yellow
                bmiImage.image = UIImage(named: "b3.png")
            }
            else if bmi_result < 34.9 {
                categoryText.text = "Obese"
                categoryText.textColor = UIColor.orange
                bmiImage.image = UIImage(named: "b4.png")
            }
            else {
                categoryText.text = "Extremely Obese"
                categoryText.textColor = UIColor.red
                bmiImage.image = UIImage(named: "b5.png")
            }
        }
    }
    
}

