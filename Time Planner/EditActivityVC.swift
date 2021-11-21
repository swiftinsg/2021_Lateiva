//
//  EditActivityVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct EditActivityVC: View {
    @Binding var editActivity: [activitiesInSets]
    @State var EditActivities = activitiesInSets(name: "", minTime: "", maxTime: "", Priority: "")
    
    var body: some View {
        NavigationView {
            
            Form {
                Section(header: Text("Name")) {
                    TextField("Name", text: $EditActivities.name).listRowSeparator(.visible)
                }
                Section(header: Text("Time")) {
                    
                    TextField("Min Time you will spend", text: $EditActivities.minTime).listRowSeparator(.visible)
                    
                    TextField("Max Time you will spend", text: $EditActivities.maxTime).listRowSeparator(.visible)
                    
                }
                
                Section(header: Text("Priority")) {
                    
                    Picker("Priority", selection: $EditActivities.Priority) {
                        Text("Very High Priority")
                        Text("High Priority")
                        Text("Medium Priority")
                        Text("Low Priority")
                        Text("Very Low Priority")
                    }
                    .pickerStyle(WheelPickerStyle())
                    
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
            .navigationTitle("Edit events")
            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
        }
    }
}

struct EditActivityVC_Previews: PreviewProvider {
    static var previews: some View {
        EditActivityVC(editActivity: .constant([]))
    }
}
