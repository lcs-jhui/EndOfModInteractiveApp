//
//  FindVelocityTabView.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 9/2/2023.
//

import SwiftUI

struct FindVelocityTabView: View {
    
    @State var history: [History] = []
    
    var body: some View {
        TabView {
            FindVelocity()
                .tabItem {
                    Text("Tab 1")
                }
            
            HistoryView()
                .tabItem {
                    Text("Tab 2")
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
