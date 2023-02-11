//
//  FindInitialVelocityTabView.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 11/2/2023.
//

import SwiftUI

struct FindInitialVelocityTabView: View {
    @State var history: [Result] = []
    
    var body: some View {
        TabView {
            FindInitialVelocity(history: $history)
                .tabItem {
                    Image(systemName: "atom")
                    Text("Calculate")
                }
            
            HistoryView(history: $history)
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }
        }
        .navigationTitle("Find Initial Velocity")
    }
}

struct FindInitialVelocityTabView_Previews: PreviewProvider {
    static var previews: some View {
        FindInitialVelocityTabView()
    }
}
