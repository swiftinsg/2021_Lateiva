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
    @State var ActivtysetNew = activitySets(name: "")
    
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

struct newActivitySet_Previews: PreviewProvider {
    static var previews: some View {
        newActivitySetVC(ActiviteSet: .constant([]))
    }
}
