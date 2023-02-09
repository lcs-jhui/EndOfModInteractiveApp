//
//  HistoryView.swift
//  EndOfModInteractiveApp
//
//  Created by Justin Hui on 9/2/2023.
//

import SwiftUI

struct HistoryView: View {
    
    //MARK: Stored Properties
    @Binding var history: [Result]
    
    //MARK: Computed Properties
    var body: some View {
        VStack{
            
            
            
            List(history.reversed()) { somePriorResult in
                ResultVIew(priorResult: somePriorResult)
                
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("History")
                                .font(.title.bold())
                                .accessibilityAddTraits(.isHeader)
                            
                        }
                    }
            }
            
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HistoryView(history: Binding.constant(historyForPreviews))
        }
    }
}
