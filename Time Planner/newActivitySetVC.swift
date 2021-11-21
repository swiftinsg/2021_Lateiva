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
                    .foregroundColor(.blue)
                    
                    Button("Discard events") {
                        //Actions
                    }
                    .foregroundColor(.red)
                }
            }
            .navigationTitle("New events")
            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
        }
    }
}

struct newActivitySet_Previews: PreviewProvider {
    static var previews: some View {
        newActivitySet(ActiviteSet: .constant([]))
    }
}
