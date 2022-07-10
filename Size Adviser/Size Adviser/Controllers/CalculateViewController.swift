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
    
    var units = "in"
    //var segmentIndex = 0
    //var genderTemp = "Woman"
    
    @IBOutlet weak var chestLabel: UILabel!
    @IBOutlet weak var chestNumLabel: UILabel!
    @IBOutlet weak var chestSlider: UISlider!
    
    @IBOutlet weak var waistNumLabel: UILabel!
    @IBOutlet weak var waistSlider: UISlider!
    
    
    @IBOutlet weak var hipsNumLabel: UILabel!
    @IBOutlet weak var hipsSlider: UISlider!
    
    @IBOutlet weak var inseamNumLabel: UILabel!
    @IBOutlet weak var inseamSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func genderButtonPressed(_ sender: UIButton) {
        if let titleLabel = sender.titleLabel {
            let title = titleLabel.text!
            
            if title == "Woman" {
                chestLabel.text = "Bust"
                modifyLabels("36" + units, chestNumLabel)
                modifySliders(29, 43, 36, chestSlider)
                
                modifyLabels("31" + units, waistNumLabel)
                modifySliders(24, 38, 31, waistSlider)
                
                modifyLabels("39" + units, hipsNumLabel)
                modifySliders(32, 46, 39, hipsSlider)
                
                modifyLabels("30" + units, inseamNumLabel)
                modifySliders(26, 34, 30, inseamSlider)
            
            } else if title == "Man" {
                chestLabel.text = "Chest"
                modifyLabels("41" + units, chestNumLabel)
                modifySliders(32, 50, 41, chestSlider)
                
                modifyLabels("35" + units, waistNumLabel)
                modifySliders(26, 44, 35, waistSlider)
                
                modifyLabels("41" + units, hipsNumLabel)
                modifySliders(32, 50, 41, hipsSlider)
                
                modifyLabels("30" + units, inseamNumLabel)
                modifySliders(26, 34, 30, inseamSlider)
            }
        }
    }
    
    @IBAction func unitSegmentedChanged(_ sender: UISegmentedControl) {
            
        if sender.selectedSegmentIndex == 0 {
            units = "in"
            
            modifySliders(chestSlider.minimumValue / 2.54, chestSlider.maximumValue / 2.54 , chestSlider.value / 2.54, chestSlider)
            modifySliders(waistSlider.minimumValue / 2.54, waistSlider.maximumValue / 2.54 , waistSlider.value / 2.54, waistSlider)
            modifySliders(hipsSlider.minimumValue / 2.54, hipsSlider.maximumValue / 2.54 , hipsSlider.value / 2.54, hipsSlider)
            modifySliders(inseamSlider.minimumValue / 2.54, inseamSlider.maximumValue / 2.54 , inseamSlider.value / 2.54, inseamSlider)
        } else {
            units = "cm"
            /*chestNumLabel.text = String(Double((chestNumLabel.text?.prefix(2))!)! * 2.54) + units
            waistNumLabel.text = String(Double((waistNumLabel.text?.prefix(2))!)! * 2.54) + units
            hipsNumLabel.text = String(Double((hipsNumLabel.text?.prefix(2))!)! * 2.54) + units
            inseamNumLabel.text = String(Double((inseamNumLabel.text?.prefix(2))!)! * 2.54) + units*/
            
            modifySliders(chestSlider.minimumValue * 2.54, chestSlider.maximumValue * 2.54 , chestSlider.value * 2.54, chestSlider)
            modifySliders(waistSlider.minimumValue * 2.54, waistSlider.maximumValue * 2.54 , waistSlider.value * 2.54, waistSlider)
            modifySliders(hipsSlider.minimumValue * 2.54, hipsSlider.maximumValue * 2.54 , hipsSlider.value * 2.54, hipsSlider)
            modifySliders(inseamSlider.minimumValue * 2.54, inseamSlider.maximumValue * 2.54 , inseamSlider.value * 2.54, inseamSlider)
        }
        
        modifyLabels((chestNumLabel.text?.prefix(2))! + units, chestNumLabel)
        modifyLabels((waistNumLabel.text?.prefix(2))! + units, waistNumLabel)
        modifyLabels((hipsNumLabel.text?.prefix(2))! + units, hipsNumLabel)
        modifyLabels((inseamNumLabel.text?.prefix(2))! + units, inseamNumLabel)
    }
    
    func modifyLabels(_ str: String, _ label: UILabel) {
        label.text = str
    }
    
    func modifySliders(_ min: Float, _ max: Float, _ val: Float, _ slider: UISlider) {
        slider.minimumValue = min
        slider.maximumValue = max
        slider.value = val
    }
    
    @IBAction func chestSliderChanged(_ sender: UISlider) {
        let chest = String(format: "%.0f", sender.value)
        modifyLabels("\(chest)" + units, chestNumLabel)
    }
    
    @IBAction func waistSliderChanged(_ sender: UISlider) {
        let waist = String(format: "%.0f", sender.value)
        modifyLabels("\(waist)" + units, waistNumLabel)
    }
    
    
    @IBAction func hipsSliderChanged(_ sender: UISlider) {
        let hips = String(format: "%.0f", sender.value)
        modifyLabels("\(hips)" + units, hipsNumLabel)
    }
    
    @IBAction func inseamSliderChanged(_ sender: UISlider) {
        let inseam = String(format: "%.0f", sender.value)
        modifyLabels("\(inseam)" + units, inseamNumLabel)
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























