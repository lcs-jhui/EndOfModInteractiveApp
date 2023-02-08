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
        
        //Calculate velocity
        return initialVelocity + ( acceleration * time )
    }
    
    //Show Result
    var velocityResult: String {
        
        //Check if there is a valid velocity
        guard let velocity = calculatedVelocity else {
            //else provide an error message
            return "Cannot be found."
        }
        //If there is a valid velocity
        return velocity.formatted(.number.precision(.fractionLength(5)))
    }
    
    //Show Result with two decimal place
    var velocityResultTwoDecimal: String {
        
        //Check if there is a valid velocity
        guard let velocity = calculatedVelocity else {
            //else provide an error message
            return "Cannot be found."
        }
        //If there is a valid velocity
        return velocity.formatted(.number.precision(.fractionLength(2)))
    }
    
    
    
    
    var body: some View {
        NavigationView{
            VStack{
                
                Group{
                    HStack{
                        Text("Initial Velocity:")
                            .bold()
                            .font(.title2)
                        
                        TextField("Enter an initial velocity...", text: $inputInitialVeolcity)
                    }
                }
                
                Group{
                    HStack{
                        Text("Acceleration:")
                            .bold()
                            .font(.title2)
                        
                        TextField("Enter an acceleration...", text: $inputAcceleration)
                    }
                }
                
                Group{
                    HStack{
                        Text("Time:")
                            .bold()
                            .font(.title2)
                        
                        TextField("Enter a time...", text: $inputTime)
                    }
                }
                
                Spacer()
                
                Text("v = vo + at")
                    .bold()
                    .font(.largeTitle)
                
                HStack{
                    Text("v =")
                        .bold()
                        .font(.largeTitle)
                    Text(velocityResult)
                        .font(.largeTitle)
                }
                
                HStack{
                    Text("v =")
                        .bold()
                        .font(.largeTitle)
                    Text(velocityResultTwoDecimal)
                        .font(.largeTitle)
                }
                
                Spacer()
                
                
                
            }.padding()
            .navigationTitle("Find The Velocity")
        }
    }
}

struct FindVelocity_Previews: PreviewProvider {
    static var previews: some View {
        FindVelocity()
    }
}
