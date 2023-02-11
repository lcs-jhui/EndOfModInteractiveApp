//
//  FindInitialVelocity.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 8/2/2023.
//

import SwiftUI

struct FindInitialVelocity: View {
    
    //MARK: Stored Properties
    @State var inputVelocity = ""
    @State var inputAcceleration = ""
    @State var inputTime = ""
    
    //Save history
    @Binding var history: [Result]
    
    //MARK: Computed Properties
    var calculatedInitialVelocity: Double? {
        
        //Try to convert velocity to a Double
        guard let velocity = Double(inputVelocity) else {
            return nil
        }
       
        //Try to convert acceleration to a Double
        guard let acceleration = Double(inputAcceleration) else {
            return nil
        }
        
        //Try to convert time to a Double
        guard let time = Double(inputTime) else {
            return nil
        }
        
        //Calculate initial velocity
        return velocity - ( acceleration * time )
        
    }
    
    //Show result
    var initialVelocityResult: String {
        //Check if there is a valid velocity
        guard let initialVelocity = calculatedInitialVelocity else {
            //else provide an error message
            return "Cannot be found."
        }
        //If there is a valid velocity
        return initialVelocity.formatted(.number.precision(.fractionLength(5)))
    }
    
    //Show result with two decimal place
    var initialVelocityResultTwoDecimal: String {
        //Check if there is a valid velocity
        guard let initialVelocity = calculatedInitialVelocity else {
            //else provide an error message
            return "Cannot be found."
        }
        //If there is a valid velocity
        return initialVelocity.formatted(.number.precision(.fractionLength(2)))
    }
    
    
    var body: some View {
            VStack{
                
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
                
                Group{
                    HStack{
                        Text("Time:")
                            .bold()
                            .font(.title2)
                        
                        TextField("Enter a time...", text: $inputTime)
                    }
                }
                
                Spacer()
                
                Text("vo = v - at")
                    .bold()
                    .font(.largeTitle)
                
                HStack{
                    Text("vo =")
                        .bold()
                        .font(.largeTitle)
                    Text(initialVelocityResult)
                        .font(.largeTitle)
                }
                
                HStack{
                    Text("vo =")
                        .bold()
                        .font(.largeTitle)
                    Text(initialVelocityResultTwoDecimal)
                        .font(.largeTitle)
                }
                
                Button(action: {
                    
                   let priorResult = Result(velocity: inputVelocity,
                                            initialVelocity: initialVelocityResultTwoDecimal,
                                            time: inputTime,
                                            acceleration: inputAcceleration)
                    
                    //Save prior result
                    history.append(priorResult)
                    
                }, label: {
                    Text("Save")
                        .font(.headline.smallCaps())
                })
                .buttonStyle(.bordered)
                
                Spacer()
                
                
                
            }.padding()
            .navigationTitle("Find The Initial Velocity")
        }
}

struct FindInitialVelocity_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FindInitialVelocity(history: Binding.constant(historyForPreviews))
        }
    }
}
