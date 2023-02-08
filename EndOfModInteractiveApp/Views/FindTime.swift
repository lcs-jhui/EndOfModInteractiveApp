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
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FindTime_Previews: PreviewProvider {
    static var previews: some View {
        FindTime()
    }
}
