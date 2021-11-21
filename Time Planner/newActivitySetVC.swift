//
//  newActivitySet.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct newActivitySet: View {
    
    @Binding var ActiviteSet: [activitySets]
    @State var ActivtysetNew = activitySets(name: "")
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Information")) {
                    TextField("Name", text: $ActivtysetNew.name).listRowSeparator(.visible)
                }
                
                Section {
                    Button("Save") {
                        //Actions
                    }
                    
                    Button("Discard events") {
                        //Actions
                    }
                    .foregroundColor(.red)
                }
            }
            .navigationTitle("New events")
        }
    }
}

struct newActivitySet_Previews: PreviewProvider {
    static var previews: some View {
        newActivitySet(ActiviteSet: .constant([]))
    }
}
