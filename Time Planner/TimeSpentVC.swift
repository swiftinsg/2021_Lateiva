//
//  TimeSpentVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct TimeSpentVC: View {
    
    var timings = [Activites(name: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name: "Bathing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name: "Wear Cloth", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name: "Pack", timeSpending: "10min", Percentage: "10%", Priority: "Medium Priority"),
                   Activites(name: "Idk", timeSpending: "10min", Percentage: "10%", Priority: "Medium Priority"),
                   Activites(name: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority"),
                   Activites(name: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority"),
                   Activites(name: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority"),
                   Activites(name: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority")]
    var leaveHouse = Text("6:00am") //Add actual code here to calculate when to leave house
    
    var body: some View {
        VStack(alignment:.leading){
            Text("What you need to do")
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))
                .multilineTextAlignment(.leading)
                .font(.system(size: 35))
                .padding(.all)
            
            Text("Leave your house by 6:00am")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .font(.system(size: 18))
                .lineLimit(3)
                .padding(.horizontal)
                .fixedSize(horizontal: false, vertical: true)
            
            List(timings) { timings in
                VStack(alignment:.leading){
                    HStack {
                        Text(timings.name)
                            .font(.system(size: 20))
                            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                            .fontWeight(.bold)
                            .padding(.bottom)
                        
                        Spacer()
                        
                        Text(timings.timeSpending)
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                            .fontWeight(.medium)
                            .padding(.bottom)
                    }
                    Spacer()
                    HStack {
                        Text(timings.Percentage)
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                            .fontWeight(.regular)
                        
                        Spacer()
                        
                        Text(timings.Priority)
                            .font(.system(size: 18))
                            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                            .fontWeight(.regular)
                    }
                }
                .padding()
                .background(Color(hue: 0.742, saturation: 0.149, brightness: 0.99))
                .cornerRadius(20)
                .padding(.vertical, 1)
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
        }
    }
}

struct TimeSpentVC_Previews: PreviewProvider {
    static var previews: some View {
        TimeSpentVC()
    }
}
