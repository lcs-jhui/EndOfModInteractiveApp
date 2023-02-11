//
//  FindAccelerationTabView.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 11/2/2023.
//

import SwiftUI

struct FindAccelerationTabView: View {
    @State var history: [Result] = []
    
    var body: some View {
        TabView {
            FindAcceleration(history: $history)
                .tabItem {
                    Image(systemName: "car.side.fill")
                    Text("Calculate")
                }
            
            HistoryView(history: $history)
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }
        }
        .navigationTitle("Find Acceleration")
    }
}

struct FindAccelerationTabView_Previews: PreviewProvider {
    static var previews: some View {
        FindAccelerationTabView()
    }
}
