//
//  chooseActivitySetVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct chooseActivitySetVC: View {
    
    var set = [activitySets(name: "School"),
               activitySets(name: "SAP"),
               activitySets(name: "Swift"),
               activitySets(name: "Party"),
               activitySets(name: "Idk"),
               activitySets(name: "JiaChen"),
               activitySets(name: "Never"),
               activitySets(name: "gonna"),
               activitySets(name: "give"),
               activitySets(name: "you"),
               activitySets(name: "up"),
               activitySets(name: "Never Gonna Let you down"),
               activitySets(name: "Otherrs"),
               activitySets(name: "Others"),
               activitySets(name: "Others"),
               activitySets(name: "Others")]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Activity Sets")
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))
                .multilineTextAlignment(.leading)
                .font(.system(size: 50))
                .padding(.all)
            
            Text("Choose which set of activities would you like to use to get ready.")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .font(.system(size: 18))
                .lineLimit(3)
                .padding(.horizontal)
                .fixedSize(horizontal: false, vertical: true)
            
            List(set) { set in
                VStack(alignment:.leading){
                    Text(set.name)
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                        .fontWeight(.semibold)
                        .padding(.vertical)
                }
                .listRowBackground(Color(hue: 0.742, saturation: 0.044, brightness: 0.979))
            }
        }
    }
}

struct chooseActivitySetVC_Previews: PreviewProvider {
    static var previews: some View {
        chooseActivitySetVC()
    }
}
