//
//  CarDetailView.swift
//  CarList
//
//  Created by Jungman Bae on 4/16/24.
//

import SwiftUI

struct CarDetailView: View {
    let car: Car
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text(car.modelName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(car.getDetails())
                .font(.body)
        }
        .padding()
    }
}
