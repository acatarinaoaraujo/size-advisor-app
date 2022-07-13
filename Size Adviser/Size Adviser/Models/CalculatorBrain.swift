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
    
    /*func getSizeValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.0", size?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }*/
    
    /*func getAdvice() -> String {
        return size?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return size?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }*/
    
    mutating func calculateSize(gender: String, units: String, chest: inout Float, waist: inout Float, hips: inout Float, inseam: inout Float) {
        print(chest)
        print(waist)
        print(hips)
        print(inseam)
        
        if units == "cm" {
            print("Changed to Inches")
            chest = chest / 2.54
            waist = waist / 2.54
            hips = hips / 2.54
            inseam = inseam / 2.54
        }
        
        print(chest)
        print(waist)
        print(hips)
        print(inseam)
        
        if gender == "Woman" {
            sizeForWoman(gender, chest, waist, hips, inseam)
            
        } else {
            //sizeForMan(chest, waist, hips, inseam)
        }
    }
    
    mutating func sizeForWoman(_ gender: String, _ chest: Float, _ waist: Float, _ hips: Float, _ inseam: Float){
        let estimationChest = sizeChart(chest, 31.0, 32.5, 34.0, 35.5, 37, 38.5, 40)
        let estimationWaist = sizeChart(waist, 25.5, 27.0, 28.5, 30.0, 31.5, 33.0, 34.5)
        let estimationHips = sizeChart(hips, 32.0, 33.5, 35.0, 36.5, 39.5, 41.0, 42.5)
        
        print(estimationChest)
        print(estimationWaist)
        print(estimationHips)
        
        /* let gender: String
         
         let chest: Float
         let waist: Float
         let hips: Float
         let inseam: Float
         
         let value: String
*/
        
        size = Size(gender: gender, chest: estimationChest, waist: estimationWaist, hips: estimationHips, inseam: "-")
        
    }
    
    mutating func sizeChart(_ val: Float, _ xxs: Float, _ xs: Float, _ s: Float, _ m: Float, _ l: Float, _ xl: Float, _ xxl: Float) -> String {
        
        switch (val) {
        case ..<xxs:
                return "XXS"
        case ..<xs:
                return "XS"
        case ..<s:
                return "S"
        case ..<m:
                return "M"
        case ..<l:
                return "L"
        case ..<xl:
                return "XL"
        case ..<xxl:
                return "XXL"
        default: return "XXXL"

        }
    }
    
    
    /*mutating func womanChest(_ chest: Float) -> String {
        
        switch (chest) {
        case ..<31.0:
                return "XXS"
        case ..<32.5:
                return "XS"
        case ..<34.0:
                return "S"
        case ..<35.5:
                return "M"
        case ..<36.5:
                return "L"
        case ..<38.0:
                return "XL"
        case ..<39.5:
                return "XXL"
        default: return "XXXL"

        }
    }
    
    mutating func womanWaist(_ waist: Float) -> String {
        
        switch (waist) {
        case ..<25.5:
                return "XXS"
        case ..<27.0:
                return "XS"
        case ..<28.5:
                return "S"
        case ..<30.0:
                return "M"
        case ..<31.5:
                return "L"
        case ..<33.0:
                return "XL"
        case ..<34.5:
                return "XXL"
        default: return "XXXL"

        }
    }
    
    mutating func womanHips(_ hips: Float) -> String {
        
        switch (hips) {
        case ..<32.0:
                return "XXS"
        case ..<33.5:
                return "XS"
        case ..<35.0:
                return "S"
        case ..<36.5:
                return "M"
        case ..<39.5:
                return "L"
        case ..<41.0:
                return "XL"
        case ..<42.5:
                return "XXL"
        default: return "XXXL"

        }
    }*/

        
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
    
    /*mutating func sizeForMan(_ chest: Float, _ waist: Float, _ hips: Float, _ inseam: Float){
        
    }*/
    
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
