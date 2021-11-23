//
//  ActiviesInSet.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct ActiviesInSetVC: View {
    
    var activty = [Activites(name: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name: "Bathing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name: "Wear Cloth", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name: "Pack", timeSpending: "10min", Percentage: "10%", Priority: "Medium Priority"),
                   Activites(name: "Idk", timeSpending: "10min", Percentage: "10%", Priority: "Medium Priority"),
                   Activites(name: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority"),
                   Activites(name: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority"),
                   Activites(name: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority"),
                   Activites(name: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority")]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("School") //Change to the actl name of the activity
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))
                .multilineTextAlignment(.leading)
                .font(.system(size: 50))
                .padding([.top, .leading, .trailing])
            HStack{
                Button {
                    //action
                } label: {
                    Text("Edit")
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                Button {
                    //action
                } label: {
                    Text("+")
                        .foregroundColor(.blue)
                        .font(.system(size: 25))
                }
            }.padding([.leading, .bottom, .trailing])
            
            List(activty) { activty in
                VStack(alignment:.leading){
                    Text(activty.name)
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                        .fontWeight(.semibold)
                        .padding(.vertical)
                }
                .listRowBackground(Color(hue: 0.742, saturation: 0.044, brightness: 0.979))
                
            }
        }
    }
    
    struct ActiviesInSet_Previews: PreviewProvider {
        static var previews: some View {
            ActiviesInSetVC()
        }
    }
}
