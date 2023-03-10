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
    
    //Save history
    @Binding var history: [Result]
    
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
                        Text("Time:")
                            .bold()
                            .font(.title2)
                        
                        TextField("Enter a time...", text: $inputTime)
                    }
                }
                
                
                Spacer()
                
                Text("a = v - v??? / t")
                    .font(Font.custom("CourierNewPS-BoldMT", size: 40))

                
                HStack{
                    Text("a =")
                        .font(Font.custom("CourierNewPSMT", size: 40))

                    Text(accelerationResult)
                        .font(Font.custom("CourierNewPSMT", size: 25))
                }
                
                HStack{
                    Text("a =")
                        .font(Font.custom("CourierNewPSMT", size: 40))

                    Text(accelerationResultTwoDecimal)
                        .font(Font.custom("CourierNewPSMT", size: 25))
                }
                
                Button(action: {
                    
                   let priorResult = Result(velocity: inputVelocity,
                                            initialVelocity: inputInitialVeolcity,
                                            time: inputTime,
                                            acceleration: accelerationResultTwoDecimal)
                    
                    //Save prior result
                    history.append(priorResult)
                    
                }, label: {
                    Text("Save")
                        .font(.headline.smallCaps())
                })
                .buttonStyle(.bordered)
                
                Spacer()
                
                
                
            }.padding()
            .navigationTitle("Find The Acceleration")
        }
}

struct FindAcceleration_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FindAcceleration(history: Binding.constant(historyForPreviews))
        }
    }
}
