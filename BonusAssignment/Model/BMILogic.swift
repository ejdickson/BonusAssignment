//
//  BMILogic.swift
//  BonusAssignment
//
//  Created by Emma Brennan on 2/25/24.
//

import Foundation

struct BMILogic {
    var height = 0
    var weight = 0
    var bmi = 0.00
    var classification = ""
    
    mutating func setHeight(_ heightInput: Int) -> Int {
        height = heightInput
        return height
    }
    
    mutating func setWeight(_ weightInput: Int) -> Int {
        weight = weightInput
        return weight
    }
    
    mutating func calcBMI(_ height: Int, weight: Int) -> Double {
        let weightDouble = Double(weight)
        let heightDouble = Double(height)
        bmi = Double(round(1000 * (703 * weightDouble / (heightDouble * heightDouble)))/1000)
        if ((18.5 >= bmi) && (bmi <= 24.9 )) {
            classification = "healthy"
        } else if (bmi > 24.9) {
            classification = "overweight"
        } else {
            classification = "underweight"
        }
        return bmi
    }
    
}
