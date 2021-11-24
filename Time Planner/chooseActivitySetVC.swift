//
//  chooseActivitySetVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct chooseActivitySetVC: View {
    init(setsa: Binding<[activitySets]>) {
        self._set = setsa
            //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))]

            //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))]
        }
    @Binding var set: [activitySets]
   
    
    var body: some View {
        VStack(alignment:.leading){

            
            Text("Choose which set of activities would you like to use to get ready.")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .font(.system(size: 18))
                .lineLimit(3)
                .padding(.horizontal)
                .fixedSize(horizontal: false, vertical: true)
            
            List(set) { set in
                NavigationLink(destination: TimeSpentVC(set: set)) {
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
        }.navigationBarTitle("Activity Sets")
    

    }
}

struct chooseActivitySetVC_Previews: PreviewProvider {
    static var previews: some View {
        chooseActivitySetVC(setsa: .constant([]))
    }
}

