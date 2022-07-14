//
//  CalculatorBrain.swift
//  Size Calculator
//
//  Created by Ana Araujo on 143/07/2022.
//  Copyright © 2022 Ana Araujo. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var size: Size?
    
    func getChest() -> String {
        return size?.chest ?? "-"
        
    }
    
    func getWaist() -> String {
        return size?.waist ?? "-"
        
    }
    
    func getHips() -> String {
        return size?.hips ?? "-"
        
    }
    
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
    
    mutating func calculateSize(gender: String, units: String, chest: inout Float, waist: inout Float, hips: inout Float) {
        
        if units == "cm" {
            chest = chest / 2.54
            waist = waist / 2.54
            hips = hips / 2.54
        }

        if gender == "WOMAN" {
            sizeForWoman(chest, waist, hips)
            
        } else {
            sizeForMan(chest, waist, hips)
        }
    }
    
    mutating func sizeForWoman(_ chest: Float, _ waist: Float, _ hips: Float){
        let estimationChest = sizeChart(chest, 31.0, 32.5, 34.0, 35.5, 37, 38.5, 40)
        let estimationWaist = sizeChart(waist, 25.5, 27.0, 28.5, 30.0, 31.5, 33.0, 34.5)
        let estimationHips = sizeChart(hips, 32.5, 34.0, 35.5, 37.0, 36.5, 38.0, 39.5)
        
        size = Size(chest: estimationChest, waist: estimationWaist, hips: estimationHips)
        
    }
    
    mutating func sizeForMan(_ chest: Float, _ waist: Float, _ hips: Float){
        let estimationChest = sizeChart(chest, 31.0, 32.5, 34.0, 35.5, 37, 38.5, 40)
        let estimationWaist = sizeChart(waist, 25.5, 27.0, 28.5, 30.0, 31.5, 33.0, 34.5)
        let estimationHips = sizeChart(hips, 32.5, 34.0, 35.5, 37.0, 36.5, 38.0, 39.5)
        
        size = Size(chest: estimationChest, waist: estimationWaist, hips: estimationHips)
        
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
    
    /*mutating func calculateUS(_ chest: Float, _ waist: Float, _ hips: Float) {
        
    }*/
}
