//
//  ActiviesInSet.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct ActiviesInSetVC: View {
    
    var activty: activitySets
    
    var body: some View {
        VStack(alignment:.leading){
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
            
            List(activty.activities) { activty in
                VStack(alignment:.leading){
                    Text(activty.name1 )
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
            ActiviesInSetVC(activty: activitySets(name: "School", activities: [Activites(name1: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"), Activites(name1: "Bathing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority")]))
        }
    }
}
