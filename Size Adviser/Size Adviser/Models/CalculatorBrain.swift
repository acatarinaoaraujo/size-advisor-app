//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Angela Yu on 28/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var size: Size?
    
    func getSizeValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.0", size?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return size?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return size?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateSize(gender: String, units: String, chest: inout Float, waist: inout Float, hips: inout Float, inseam: inout Float) {
        if units == "cm" {
            chest = chest / 2.54
            waist = waist / 2.54
            hips = hips / 2.54
            inseam = inseam / 2.54
        }
        
        if gender == "Woman" {
            sizeForWoman(chest, waist, hips, inseam)
            
        } else {
            sizeForMan(chest, waist, hips, inseam)
        }
    }
    
    mutating func sizeForWoman(_ chest: Float, _ waist: Float, _ hips: Float, _ inseam: Float){
        womanChest(chest)
        
    }
    
    mutating func womanChest(_ chest: Float) -> Float? {
        
        switch (chest) {
        case ..<31.0:
                return 0.0
        case ..<33.0:
                return 0.0
        case ..<35.0:
                return 0.0
        case ..<37.0:
                return 0.0
        case ..<39.0:
                return 0.0
        case ..<41.0:
                return 0.0
        case ..<43.0:
                return 0.0
        default: return 0.0

        }
    }

        
       /* if chest < 31 {
            // xxs
        } else if chest < 33 {
            // xs
        } else if chest < 35 {
            // s
        } else if chest < 37 {
            // m
        } else if chest < 39 {
            // l
        } else if chest
        
    }*/
    
    mutating func sizeForMan(_ chest: Float, _ waist: Float, _ hips: Float, _ inseam: Float){
        
    }
    
    /* if let n = number {
     switch symbol {
     case "+/-":
         return n * -1
     case "AC":
         return 0
     case "%":
         return n * 0.01
     case "sin":
         return sin(n)
     case "cos":
         return cos(n)
     case "tan":
         return tan(n)
     case "√":
         return n.squareRoot()
     case "=":
         return performTwoNumCalculation(n2: n)
     default:
         intermediateCalculation = (n1: n, calcMethod: symbol)
     }
 } */
    
    
    /*mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }*/
    
    
}
