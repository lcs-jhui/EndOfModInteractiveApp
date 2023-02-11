//
//  ResultVIew.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 9/2/2023.
//

import SwiftUI

struct ResultVIew: View {
    
    //MARK: Stored Properties
    let priorResult: Result
    
    //MARK: Computed Properties
    var body: some View {
        
        HStack{
            
            VStack(alignment: .leading, spacing: 3){
                Text("Velocity")
                Text("Initial Velocity")
                Text("Acceleration")
                Text("Time")
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3){
                Text("\(priorResult.velocity) m/s")
                Text("\(priorResult.initialVelocity) m/s")
                Text("\(priorResult.acceleration) m/s²")
                Text("\(priorResult.time) s")
            }
            
        }.padding()
    }
}

struct ResultVIew_Previews: PreviewProvider {
    static var previews: some View {
        ResultVIew(priorResult: exampleResultForPreviews)
    }
}
