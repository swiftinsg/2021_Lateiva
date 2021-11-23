//
//  EditActivity.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct NewActivityVC: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var newActivity: [activitiesInSets]
    @State var NewActivities = activitiesInSets(name: "", minTime: "", maxTime: "", Priority: "")
    
    var body: some View {
        NavigationView {
            
            Form {
                Section(header: Text("Name")) {
                    TextField("Name", text: $NewActivities.name).listRowSeparator(.visible)
                }
                Section(header: Text("Time")) {
                    
                    TextField("Min Time you will spend", text: $NewActivities.minTime).listRowSeparator(.visible)
                    
                    TextField("Max Time you will spend", text: $NewActivities.maxTime).listRowSeparator(.visible)
                    
                }
                
                Section(header: Text("Priority")) {
                    
                    Picker("Priority", selection: $NewActivities.Priority) {
                        Text("5")
                        Text("4")
                        Text("3")
                        Text("2")
                        Text("1")
                    }
                    .pickerStyle(WheelPickerStyle())
                    
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Save")
                                .foregroundColor(.blue)
                        }
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Text("Discard events")
                                .foregroundColor(.red)
                        }
                        Spacer()
                    }
                }
            }
            .navigationTitle("New events")
            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
        }
    }
}

struct NewActivity_Previews: PreviewProvider {
    static var previews: some View {
        NewActivityVC(newActivity: .constant([]))
    }
}
