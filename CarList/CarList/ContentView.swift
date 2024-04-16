//
//  ContentView.swift
//  CarList
//
//  Created by Jungman Bae on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("Electric Cars")) {
                    ForEach(cars.filter { $0 is ElectricCar}) { car in
                        NavigationLink(destination: CarDetailView(car: car)) {
                            Text(car.modelName)
                        }
                    }
                }
                Section(header: Text("Oil Cars")) {
                    ForEach(cars.filter { $0 is OilCar}) { car in
                        NavigationLink(destination: CarDetailView(car: car)) {
                            Text(car.modelName)
                        }
                    }
                }
                Section(header: Text("Hybrid Cars")) {
                    ForEach(cars.filter { $0 is HybridCar}) { car in
                        NavigationLink(destination: CarDetailView(car: car)) {
                            Text(car.modelName)
                        }
                    }
                }
                
            }
            .navigationTitle("Car List")
        }
    }
}

#Preview {
    ContentView()
}
