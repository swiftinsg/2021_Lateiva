//
//  EditActivity.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct NewActivityVC: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var newActivity: [activitySets]
    @State var NewActivities = activitySets(name: "", activities: [Activites(name1: "", timeSpending: "", Percentage: "", Priority: "", minTime: 0 , maxTime: 0)] )
    
    var body: some View {
        NavigationView {
            
            Form {
                Section(header: Text("Name")) {
                    ForEach($NewActivities.activities, id: \.id) { event in

                        TextField("Name", text: event.name1).listRowSeparator(.visible)
                    }
                    }
                Section(header: Text("Time")) {
                    ForEach($NewActivities.activities, id: \.id) { event in
                        Slider(value: event.minTime,
                                                  in: 0...120,
                                                  step: 1)
                        Slider(value: event.maxTime,
                                                  in: 0...120,
                                                  step: 1)
                    
                    }
                    
                }
                
                Section(header: Text("Priority")) {
                    ForEach($NewActivities.activities, id: \.id) { event in
                    Picker("Priority", selection: event.Priority) {
                        Text("5")
                        Text("4")
                        Text("3")
                        Text("2")
                        Text("1")
                    }
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
