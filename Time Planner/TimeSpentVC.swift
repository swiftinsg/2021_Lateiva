//
//  TimeSpentVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct TimeSpentVC: View {
    
    
    var set: ActivitySets
    
    /*var timings = [Activites(name1: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name1: "Bathing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name1: "Wear Cloth", timeSpending: "15min", Percentage: "20%", Priority: "High Priority"),
                   Activites(name1: "Pack", timeSpending: "10min", Percentage: "10%", Priority: "Medium Priority"),
                   Activites(name1: "Idk", timeSpending: "10min", Percentage: "10%", Priority: "Medium Priority"),
                   Activites(name1: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority"),
                   Activites(name1: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority"),
                   Activites(name1: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority")
                   Activites(name1: "some other", timeSpending: "5min", Percentage: "5%", Priority: "Low Priority")]
    */
    var leaveHouse = Text("6:00am") //Add actual code here to calculate when to leave house
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Leave your house by 6:00am")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .font(.system(size: 18))
                .lineLimit(3)
                .padding(.horizontal)
                .fixedSize(horizontal: false, vertical: true)
            
            List(set.activities) { timings in
                VStack(alignment:.leading){
                    HStack {
                        Text(timings.name1)
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
        }.navigationBarTitle(Text("What you need to do"))
        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))

    }
}

struct TimeSpentVC_Previews: PreviewProvider {
    static var previews: some View {
        TimeSpentVC(set: ActivitySets(name: "School", activities: [Activity(name1: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5), Activity(name1: "Bathing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5)]))
    }
}
