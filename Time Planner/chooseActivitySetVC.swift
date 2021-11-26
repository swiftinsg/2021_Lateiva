//
//  chooseActivitySetVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct chooseActivitySetVC: View {
   
    @Binding var set: [ActivitySets]
    var timeDiff: Int
   
    
    var body: some View {
        VStack(alignment:.leading){
            Text("")
          //  Text("")
      /*      Button {
                 print(timeDiff)
            } label: {
                Text("Tap!")
                    .foregroundColor(.red)
            }
        */
            Text("Choose which set of activities would you like to use to get ready.")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .font(.system(size: 18))
                .lineLimit(3)
                .padding(.horizontal)
                .fixedSize(horizontal: false, vertical: true)
            
            List(set) { set in
                NavigationLink(destination: TimeSpentVC(something: set, hello: timeDiff)) {
                VStack(alignment:.leading){
                    Text(set.name)
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                        .fontWeight(.semibold)
                        .padding(.vertical)
                }
                
                }.listRowBackground(Color(hue: 0.742, saturation: 0.049, brightness: 0.984))
        }
        }.navigationBarTitle("Activity Sets")
        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))

    

    }
}

struct chooseActivitySetVC_Previews: PreviewProvider {
    static var previews: some View {
        chooseActivitySetVC(set: .constant([]), timeDiff: 0)
    }
}

