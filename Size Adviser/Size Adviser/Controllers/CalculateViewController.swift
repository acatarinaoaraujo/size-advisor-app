//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

    /*@IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!*/
    
    var units = "in"
    @IBOutlet weak var chestLabel: UILabel!
    @IBOutlet weak var chestNumLabel: UILabel!
    @IBOutlet weak var chestSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func genderButtonPressed(_ sender: UIButton) {
        if let titleLabel = sender.titleLabel {
            let title = titleLabel.text!
            print(title)
            
            if title == "Woman" {
                chestLabel.text = "Bust"
                
                //chestNumLabel.text = "36" + units
                modifyLabels("36" + units, chestNumLabel)
                
                chestSlider.minimumValue = 29
                chestSlider.maximumValue = 43
                chestSlider.value = 36
            } else if title == "Man" {
                chestLabel.text = "Chest"
                
                //chestNumLabel.text = "41" + units
                modifyLabels("41" + units, chestNumLabel)
                
                chestSlider.minimumValue = 32
                chestSlider.maximumValue = 50
                chestSlider.value = 41
            }
        }
    }
    
    
    @IBAction func unitSegmentedChanged(_ sender: UISegmentedControl) {
            print(sender.selectedSegmentIndex)
        if sender.selectedSegmentIndex == 0 {
            units = "in"
        } else {
            units = "cm"
        }
        modifyLabels((chestNumLabel.text?.prefix(2))! + units, chestNumLabel)
    }
    
    func modifyLabels(_ chestNum: String, _ label : UILabel) {
        label.text = chestNum
    }
    
    @IBAction func chestSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.0f", sender.value)
        chestNumLabel.text = "\(height)" + units
    }
    /*
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value

        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    } */
}























