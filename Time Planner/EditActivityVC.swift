//
//  EditActivityVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

enum EditAction1 {
        case cancel
        case delete
        case save (Activites)
        
    }

struct EditActivityVC: View {
  //  @Binding var editActivity: [Activites]
    @State var EditActivities: Activites
    @Environment(\.presentationMode) var presentationMode
    
    var dismiss : (EditAction1) -> Void
    
    init(event: Activites, dismiss: @escaping (EditAction1) -> Void) {
        self.dismiss = dismiss
        self._EditActivities = State(initialValue: event)
        
    }
    
    var body: some View {
        NavigationView {
            
            Form {
                Section(header: Text("Name")) {
                    TextField("Name", text: $EditActivities.name1).listRowSeparator(.visible)
                }
                Section(header: Text("Time")) {
                    
                    Slider(value: $EditActivities.minTime,
                                                  in: 0...120,
                                                  step: 1)
                    Slider(value: $EditActivities.minTime,
                                                  in: 0...120,
                                                  step: 1)
                    
                
                    
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
                    HStack {
                        Spacer()
                        Button {
                            dismiss(.save(EditActivities))
                        } label: {
                            Text("Save")
                                .foregroundColor(.blue)
                        }
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Button {
                            dismiss(.delete)
                        } label: {
                            Text("Discard events")
                                .foregroundColor(.red)
                        }
                        Spacer()
                    }
                }

            }
            .navigationTitle("Edit events")
            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
        }
    }
}

struct EditActivityVC_Previews: PreviewProvider {
    static var previews: some View {
        EditActivityVC(event:Activites(name1: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5)) { _ in
            
        }
    }
}
