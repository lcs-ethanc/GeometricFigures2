//
//  Circle.swift
//  GeometricFigures2
//
//  Created by Pak Ching Ethan Chen on 2024-10-03.
//

import Foundation

// Define the protocol
protocol Describable {
    var description: String { get }
}

// Define the structure, adopting the new protocol
struct Circle: Describable {
    
    // MARK: Stored properties
    var radius: Double
    
    // MARK: Computed properties
    var diameter: Double {
        return radius * 2
    }
    
    var area: Double {
        return Double.pi * radius * radius
    }
    
    var perimeter: Double {
        return 2 * Double.pi * radius
    }
    
    var circumference: Double {
        return perimeter
    }
    
    var description: String {
        return "The radius of this circle is \(radius) units."
    }
    
}
