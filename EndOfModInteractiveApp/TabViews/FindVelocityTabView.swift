//
//  FindVelocityTabView.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 9/2/2023.
//

import SwiftUI

struct FindVelocityTabView: View {
    
    @State var history: [Result] = []
    
    var body: some View {
        TabView {
            FindVelocity(history: $history)
                .tabItem {
                    Image(systemName: "figure.run")
                    Text("Calculate")
                }
            
            HistoryView(history: $history)
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }
        }
        .navigationTitle("Find Velocity")
    }
}

struct FindVelocityTabView_Previews: PreviewProvider {
    static var previews: some View {
        FindVelocityTabView()
    }
}
