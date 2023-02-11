//
//  FindTime.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 8/2/2023.
//

import SwiftUI

struct FindTime: View {
    
    //MARK: Stored Properties
    @State var inputInitialVeolcity = ""
    @State var inputVelocity = ""
    @State var inputAcceleration = ""
    
    //Save history
    @Binding var history: [Result]

    
    
    //MARK: Computed Properties
    
    //Calculate Time
    var calculatedTime: Double? {
        
        //Try to convert initialVelocity to a Double
        guard let initialVelocity = Double(inputInitialVeolcity) else {
            return nil
        }
        
        //Try to convert velocity to a Double
        guard let velocity = Double(inputVelocity) else {
            return nil
        }
        
        //Try to convert acceleration to a Double
        guard let acceleration = Double(inputAcceleration) else {
            return nil
        }
        
        //Calculate Time
        return ( velocity - initialVelocity ) / acceleration
        
    }
    
    //Show Result
    var timeResult: String {
        
        //Check if there is a valid velocity
        guard let time = calculatedTime else {
            //else provide an error message
            return "Cannot be found."
        }
        //If there is a valid velocity
        return time.formatted(.number.precision(.fractionLength(5)))
    }
   
    //Show Result with two decimal place
    var timeResultTwoDecimal: String {
        
        //Check if there is a valid velocity
        guard let time = calculatedTime else {
            //else provide an error message
            return "Cannot be found."
        }
        //If there is a valid velocity
        return time.formatted(.number.precision(.fractionLength(2)))
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
                        Text("Acceleration:")
                            .bold()
                            .font(.title2)
                        
                        TextField("Enter an acceleration...", text: $inputAcceleration)
                    }
                }
                
                
                Spacer()
                
                Text("t = v - vo / a")
                    .bold()
                    .font(.largeTitle)
                
                HStack{
                    Text("t =")
                        .bold()
                        .font(.largeTitle)
                    Text(timeResult)
                        .font(.largeTitle)
                }
                
                HStack{
                    Text("t =")
                        .bold()
                        .font(.largeTitle)
                    Text(timeResultTwoDecimal)
                        .font(.largeTitle)
                }
                
                Button(action: {
                    
                   let priorResult = Result(velocity: inputVelocity,
                                            initialVelocity: inputInitialVeolcity,
                                            time: timeResultTwoDecimal,
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
            .navigationTitle("Find The Time")
        }
}

struct FindTime_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FindTime(history: Binding.constant(historyForPreviews))
        }
    }
}
