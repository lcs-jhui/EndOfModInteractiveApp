//
//  ResultVIew.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 9/2/2023.
//

import SwiftUI

struct ResultVIew: View {
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
                Text("Velocity")
                Text("Initial Velocity")
                Text("Acceleration")
                Text("Time")
            }
            
        }.padding()
    }
}

struct ResultVIew_Previews: PreviewProvider {
    static var previews: some View {
        ResultVIew()
    }
}
