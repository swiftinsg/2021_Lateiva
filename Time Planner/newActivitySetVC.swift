//
//  newActivitySet.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct newActivitySetVC: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var ActiviteSet: [activitySets]
    @State var ActivtysetNew = activitySets( name: "", activities: [Activites(name1: "", timeSpending: "", Percentage: "", Priority: "")])
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Information")) {
                    TextField("Name", text: $ActivtysetNew.name).listRowSeparator(.visible)
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button {
                            presentationMode.wrappedValue.dismiss()
                            ActiviteSet.append(ActivtysetNew)
                        } label: {
                            Text("Save")
                                .foregroundColor(.blue)
                        }
                        .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 60)
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
                        .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 60)
                        Spacer()
                    }
                }

            }
            .navigationTitle("Activity Sets")
            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
        }
    }
}

struct newActivitySet_Previews: PreviewProvider {
    static var previews: some View {
        newActivitySetVC(ActiviteSet: .constant([]))
    }
}
