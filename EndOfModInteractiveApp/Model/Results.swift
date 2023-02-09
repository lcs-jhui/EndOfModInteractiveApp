//
//  Results.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 8/2/2023.
//

import Foundation

struct Result: Identifiable {
    
    let id = UUID()
    let velocity: String
    let initialVelocity: String
    let time: String
    let acceleration: String
}


let exampleResultForPreviews = Result(velocity: "85.00", initialVelocity: "10.00", time: "15.00", acceleration: "5.00")

let secondExampleResultForPreviews = Result(velocity: "240.00", initialVelocity: "40.00", time: "20.00", acceleration: "10.00")
