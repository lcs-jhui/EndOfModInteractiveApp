//
//  FindAcceleration.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 8/2/2023.
//

import SwiftUI

struct FindAcceleration: View {
    
    //MARK: Stored Properties
    @State var inputInitialVeolcity = ""
    @State var inputVelocity = ""
    @State var inputTime = ""
    
    //MARK: Computed Properties
    
    //Calculate acceleration
    var calculatedAcceleration: Double? {
        
        //Try to convert initialVelocity to a Double
        guard let initialVelocity = Double(inputInitialVeolcity) else {
            return nil
        }
        
        //Try to convert velocity to a Double
        guard let velocity = Double(inputVelocity) else {
            return nil
        }
        
        //Try to convert time to a Double
        guard let time = Double(inputTime) else {
            return nil
        }
        
        //Calculate Time
        return ( velocity - initialVelocity ) / time
        
    }
    
    //Show Result
    var accelerationResult: String {
        
        //Check if there is a valid velocity
        guard let acceleration = calculatedAcceleration else {
            //else provide an error message
            return "Cannot be found."
        }
        //If there is a valid velocity
        return acceleration.formatted(.number.precision(.fractionLength(5)))
    }
   
    //Show Result with two decimal place
    var accelerationResultTwoDecimal: String {
        
        //Check if there is a valid velocity
        guard let acceleration = calculatedAcceleration else {
            //else provide an error message
            return "Cannot be found."
        }
        //If there is a valid velocity
        return acceleration.formatted(.number.precision(.fractionLength(2)))
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
                        Text("Velocity:")
                            .bold()
                            .font(.title2)
                        
                        TextField("Enter a velocity...", text: $inputVelocity)
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
                
                
                Spacer()
                
                Text("v = vo + at")
                    .bold()
                    .font(.largeTitle)
                
                HStack{
                    Text("v =")
                        .bold()
                        .font(.largeTitle)
                    Text(timeResult)
                        .font(.largeTitle)
                }
                
                HStack{
                    Text("v =")
                        .bold()
                        .font(.largeTitle)
                    Text(timeResultTwoDecimal)
                        .font(.largeTitle)
                }
                
                Spacer()
                
                
                
            }.padding()
            .navigationTitle("Find The Time")
        }    }
}

struct FindAcceleration_Previews: PreviewProvider {
    static var previews: some View {
        FindAcceleration()
    }
}
