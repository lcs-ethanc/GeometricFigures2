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
            Image("CircleDiagram")
                .resizable()
                .scaledToFit()
            //lable (descibe what the slider is for)
            Text("Radius")
            
            //1. INPUT
            //slider control - to allow for user input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            //3. OUTPUT
            //Label (show the current slider value)
            Text("Radius is: \(currentCircle.radius.formatted())")
            
            //Label (show the diameter)
            Text("Diameter is: \(currentCircle.diameter.formatted())")
            
            //Label (show the area)
            Text("Area is: \(currentCircle.area.formatted())")
            
            //Show the circumference
            Text("Circumfernence is: \(currentCircle.circumference.formatted())")
        }
    }
}

#Preview {
    CircleView()
}
