//
//  ActiviesInSet.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import SwiftUI

struct ActiviesInSetVC: View {
    
    @State var activty: [activitySets]
    @State var setsa1 = [activitySets(name: "School", activities: [Activites(name1: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5), Activites(name1: "Bathing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5)]), activitySets(name: "Work", activities: [Activites(name1: "Dressing up", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5)]) ]
    @State var isSheetEnabled5 = false
    @State var isSheetEnabled6 = false
    @State var selectedEvent1: Activites? = nil
    
    
    var body: some View {
        
        /*
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
         
         */

        List($activty.activities) { activty in
            VStack(alignment:.leading){
                Text(activty.name1 )
                    .font(.system(size: 20))
                    .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                    .fontWeight(.semibold)
                    .padding(.vertical)
                Spacer()
                
                HStack {
                    Text(activty.Priority)
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                        .fontWeight(.regular)
                    .padding(.bottom)
           
                    Spacer()
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            . frame(width: 100, height:50)
                            .foregroundColor(Color(red: 0.6431372549019608, green: 0.6078431372549019, blue: 0.9568627450980393))
                        
                        Button {
                          isSheetEnabled5 = true
                        } label: {
                            Text("Edit")
                                .foregroundColor(.white)
                        }.frame(width: 100, height:50)
                    }
                }
            }
            .listRowBackground(Color(hue: 0.742, saturation: 0.044, brightness: 0.979))
            
        }
        .navigationBarTitle(Text("Activities"))
        .navigationBarItems(trailing: Button(action: {
            isSheetEnabled6 = true
        }, label: {
            Image(systemName: "plus")
        }))
        .sheet(item: $selectedEvent1){ selectedEvent in
            EditActivityVC(event: selectedEvent){editAction in
                switch editAction {
                case .cancel:
                    break
                case .delete:
                    activty.activities.remove(at: activty.activities.firstIndex(of: selectedEvent1!)!)
                case .save(let event):
                    activty[activty.firstIndex(of: selectedEvent1!)!] = event
                }
                self.selectedEvent1 = nil
            }
        }
        .sheet(isPresented: $isSheetEnabled6){
           NewActivityVC(newActivity: $activty)
       }
  //      .sheet(isPresented: $isSheetEnabled6){
   //         NewActivityVC(newActivity: [])
        //}
        
        
    }
    
    struct ActiviesInSet_Previews: PreviewProvider {
        static var previews: some View {
            ActiviesInSetVC(activty: activitySets(name: "School", activities: [Activites(name1: "Brushing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5), Activites(name1: "Bathing", timeSpending: "15min", Percentage: "20%", Priority: "High Priority", minTime: 1, maxTime: 5)]))
        }
    }
}
