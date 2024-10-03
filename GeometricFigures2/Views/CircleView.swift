//
//  CircleView.swift
//  GeometricFigures2
//
//  Created by Pak Ching Ethan Chen on 2024-10-03.
//

import SwiftUI

struct CircleView: View {
    
    // MARK: Stored properties
    @State var currentCircle = Circle(radius: 50)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            //add an image
            
            //lable (descibe what the slider is for)
            Text("Radius")
            
            //slider control - to allow for user input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            //lable (show the current slider value)
            Text("Radius is: \(currentCircle.radius.formatted())")
        }
    }
}

#Preview {
    CircleView()
}
