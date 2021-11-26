//
//  TimeSpentVC.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct TimeSpentVC: View {
    
    @State var activityArray: [Activity] = []
    var time1: [Int] = []
    @State var timeDiff: Int
    
    init(something: ActivitySets, hello: Int) {
        self._set = State(initialValue: something)
        
        self._activityArray = State(initialValue: something.activities)
        self._timeDiff = State(initialValue: hello)
        
        
        for hi in activityArray{
            if hi.Priority == "A Must Do"{
                time1.append(5)
            } else if hi.Priority == "High Priority" {
                time1.append(4)
            }else if hi.Priority == "Medium Priority"{
                time1.append(3)
            }else if hi.Priority == "Low Priority"{
                time1.append(2)
            }else if hi.Priority == "Very Low Priority"{
                time1.append(1)
            }
            
        }
        let sanjith1 = timeDiff/(time1.reduce(0, +))
        
        for (index, sanjith) in activityArray.enumerated() {
            
            if sanjith.Priority == "A Must Do"{
                
                for activity in activityArray{
                    if activity.id == sanjith.id {
                        activityArray[index].timeSpending = String(sanjith1*5)
                    }
                    
                }
            } else if sanjith.Priority == "High Priority" {
                for activity in activityArray {
                    if activity.id == sanjith.id {
                        activityArray[index].timeSpending = String(sanjith1*4)
                    }
                    
                }
            } else if sanjith.Priority == "Medium Priority"{
                for activity in activityArray {
                    if activity.id == sanjith.id {
                        activityArray[index].timeSpending = String(sanjith1*3)
                    }
                    
                }
            }else if sanjith.Priority == "Low Priority"{
                for activity in activityArray {
                    if activity.id == sanjith.id {
                        activityArray[index].timeSpending = String(sanjith1*2)
                    }
                    
                }
            }else if sanjith.Priority == "Very Low Priority"{
                for activity in activityArray {
                    if activity.id == sanjith.id {
                        activityArray[index].timeSpending = String(sanjith1*1)
                    }
                    
                }
            }
            
        }
        
    }
    
    
    @State var set: ActivitySets
    //  @Binding var ser: [ActivitySets]
    
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
                if timings.minTime < timings.timeSpending {
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
            }
            .listStyle(.plain)
        }.navigationBarTitle(Text("What you need to do"))
        /*
         .navigationBarItems(trailing: Button(action: {
         for (hi) in set.activities{
         if hi.Priority == "A Must Do"{
         time1.append(5)
         } else if hi.Priority == "High Priority" {
         time1.append(4)
         }else if hi.Priority == "Medium Priority"{
         time1.append(3)
         }else if hi.Priority == "Low Priority"{
         time1.append(2)
         }else if hi.Priority == "Very Low Priority"{
         time1.append(1)
         }
         
         timeDiff/(time1.reduce(0, +)))
         }
         }, label: {
         Text("Calculate")
         }))
         */
            .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
        
        
    }
    
    /*
     "A Must Do").tag("A Must Do")
     Text("High Priority").tag("High Priority")
     Text("Medium Priority").tag("Medium Priority")
     Text("Low Priority").tag("Low Priority")
     Text("Very Low Priority")
     */
    
    
    
    
}

struct TimeSpentVC_Previews: PreviewProvider {
    static var previews: some View {
        TimeSpentVC(something: ActivitySets(name: "School", activities: [Activity(name1: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5), Activity(name1: "Bathing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5)]), hello: 60)
    }
}
