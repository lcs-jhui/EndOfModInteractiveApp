//
//  FindTimeTabView.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 11/2/2023.
//

import SwiftUI

struct FindTimeTabView: View {
    @State var history: [Result] = []
    
    var body: some View {
        TabView {
            FindTime(history: $history)
                .tabItem {
                    Image(systemName: "timer")
                    Text("Calculate")
                }
            
            HistoryView(history: $history)
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }
        }
        .navigationTitle("Find Time")
    }
}

struct FindTimeTabView_Previews: PreviewProvider {
    static var previews: some View {
        FindTimeTabView()
    }
}
