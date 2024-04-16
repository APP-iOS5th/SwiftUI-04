//
//  Car.swift
//  CarList
//
//  Created by Jungman Bae on 4/16/24.
//

import Foundation

class Car: Identifiable {
    let id = UUID()
    var brand: String
    var modelName: String
    var year: Int
    var doorCount: Int
    var weight: Double
    var height: Double
    
    init(brand: String, modelName: String, year: Int, doorCount: Int,
         weight: Double, height: Double) {
        self.brand = brand
        self.modelName = modelName
        self.year = year
        self.doorCount = doorCount
        self.weight = weight
        self.height = height
    }
    
    func getDetails() -> String {
        return "Brand: \(brand)\nModel: \(modelName)\nYear: \(year)"
    }
}
