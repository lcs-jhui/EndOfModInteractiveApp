//
//  FormulaListView.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 8/2/2023.
//

import SwiftUI

struct FormulaListView: View {
    var body: some View {
        
        List{
            NavigationLink(destination: {
                FindUnknownListView()
            }, label: {
                Text("v = vo + at")
            })
        }.navigationTitle("Kinematics Formulas")
        
    }
}

struct FormulaListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FormulaListView()
        }
    }
}
