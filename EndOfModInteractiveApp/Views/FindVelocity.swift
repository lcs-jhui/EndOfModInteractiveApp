//
//  FindVelocity.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 7/2/2023.
//

import SwiftUI

struct FindVelocity: View {
    
    //MARK: Stored Properties
    @State var inputInitialVeolcity = ""
    @State var inputTime = ""
    @State var inputAcceleration = ""
    
    //MARK: Computed Properties
    
    //Calculate Velcotiy
    var calculatedVelocity: Double? {
        
        //Try to convert initialVelocity to a Double
        guard let initialVelocity = Double(inputInitialVeolcity) else {
            return nil
        }
        
        //Try to convert Time to a Double
        guard let time = Double(inputTime) else {
            return nil
        }
        
        //Try to convert initialVelocity to a Double
        guard let acceleration = Double(inputAcceleration) else {
            return nil
        }
        
        return initialVelocity + ( acceleration * time )
    }
    
    //Show Result
    var velocityResult: String {
        
        //Check if there is a valid velocity
        guard let velocity = calculatedVelocity else {
            //else provide an error message
            return "Cannot be found. Please provide valid input"
        }
        //If there is a valid velocity
        return velocity.formatted(.number.precision(.fractionLength(2)))
    }
    
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                
                
                
                
            }
            .navigationTitle("Find The Velocity")
        }
    }
}

struct FindVelocity_Previews: PreviewProvider {
    static var previews: some View {
        FindVelocity()
    }
}
