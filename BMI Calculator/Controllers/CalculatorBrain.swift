//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Frederick Javalera on 3/1/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain
{
  var bmi: BMI?
  
  mutating func calculateBMI(height: Float, weight: Float) {
    let bmiValue = weight / pow(height, 2)
    switch bmiValue {
    case 1..<18.5:
      bmi = BMI(value: bmiValue, advice: "Eat more pies.", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    case 18.5..<24.9:
      bmi = BMI(value: bmiValue, advice: "Fit as a fiddle.", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
    default:
      bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
  }
  
  func getBMIValue() -> String {
    let BMITo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
    return BMITo1DecimalPlace
  }
}
