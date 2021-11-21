//
//  ActivitySetsForEditVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct ActivitySetsForEditVC: View {
    
    var setsa = [activitySets(name: "School"),
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
            Text("Today,")
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))
                .multilineTextAlignment(.leading)
                .font(.system(size: 50))
                .padding([.top, .leading, .trailing])
           
            List(setsa) { setsa in
                VStack(alignment:.leading){
                    Text(setsa.name)
                        .font(.system(size: 24))
                        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                        .fontWeight(.semibold)
                        .padding(.vertical)
                }
                .listRowBackground(Color(hue: 0.742, saturation: 0.09, brightness: 1.0))
            }
        }
    }
}

struct ActivitySetsForEditVC_Previews: PreviewProvider {
    static var previews: some View {
        ActivitySetsForEditVC()
    }
}
