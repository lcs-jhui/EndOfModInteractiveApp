//
//  FindUnknownListView.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 8/2/2023.
//

import SwiftUI

struct FindUnknownListView: View {
    var body: some View {
            
            List{
                
                NavigationLink(destination: {
                    FindVelocityTabView()
                }, label: {
                    Text("Find The Velocity")
                })
                
                NavigationLink(destination: {
                    FindInitialVelocity()
                }, label: {
                    Text("Find The Initial Velocity")
                })
                
                NavigationLink(destination: {
                    FindTime()
                }, label: {
                    Text("Find The Time")
                })
                
                NavigationLink(destination: {
                    FindAcceleration()
                }, label: {
                    Text("Find The Acceleration")
                })
            }
            .navigationTitle("Find The Unknown")
        }
    }

struct FindUnknownListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FindUnknownListView()
        }
    }
}
