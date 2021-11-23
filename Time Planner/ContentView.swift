//
//  ContentView.swift
//  Time Planner
//
//  Created by sanjithsethu on 18/11/21.
//

import SwiftUI

struct ContentView: View {
    init() {
            //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))]

            //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))]
        }
    @State var isSheetEnabled1 = false
    @State var isSheetEnabled2 = false
    
    
   @State var events = [Event(name: "School", Location: "SST", date: "01/00/0000", time: "09:41am"),Event(name: "Swift Accelerator Programme", Location: "Tinkertanker", date: "01/00/0000", time: "09:41am"), Event(name: "SAP", Location: "Home", date: "01/00/0000", time: "09:41am"), Event(name: "Party", Location: "Jia Chen house", date: "01/00/0000", time: "09:41pm")]
    
    var body: some View {
     
        NavigationView {
            VStack(alignment:.leading){
                   /* Text("Today,")
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 50))
                        .padding([.top, .leading, .trailing])
                    
                    Text("")
                    
                    */
                    Text(" Tap on one of your events to continue")
                        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                        .font(.system(size: 14))
                        .padding([.leading, .trailing])
                   
                    
                    List(events) { events in
                        NavigationLink(destination: startTimeVC()) {

                        VStack(alignment:.leading){
                            
                            Spacer()
                            
                            Text(events.name)
                                .font(.system(size: 25))
                                .foregroundColor(Color(hue: 0.78, saturation: 1.0, brightness: 0.722))
                                .fontWeight(.heavy)
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            Text(events.Location)
                                .font(.system(size: 18))
                                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                            
                            Spacer()
                            
                            HStack{
                                Text(events.time)
                                    .font(.system(size: 18))
                                    .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                                
                                Spacer()
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 15)
                                        . frame(width: 100, height:50)
                                        .foregroundColor(Color(red: 0.6431372549019608, green: 0.6078431372549019, blue: 0.9568627450980393))
                                    
                                    Button {
                                       isSheetEnabled1 = true
                                    } label: {
                                        Text("Edit")
                                            .foregroundColor(.white)
                                    }.frame(width: 100, height:50)
                                }
                            }
                        }
                            .background(Color(hue: 0.742, saturation: 0.149, brightness: 0.99))
                            .cornerRadius(20)
                            .padding(.vertical, 1)
                            .listRowSeparator(.hidden)
                        }.padding()
                            .background(Color(hue: 0.742, saturation: 0.149, brightness: 0.99))
                            .cornerRadius(20)
                            .padding(.vertical, 1)
                            .listRowSeparator(.hidden)
                    
                }
                    .listStyle(.plain)
                    .buttonStyle(.plain)
                
                    
            }
                .navigationBarTitle(Text("Today,"))
                .navigationBarItems(trailing: Button(action: {
                    isSheetEnabled2 = true
                            }, label: {
                                Image(systemName: "plus")
                            }))
        }
            .sheet(isPresented: $isSheetEnabled1){
                editEventsVC(event: .constant([]))
        }
            .sheet(isPresented: $isSheetEnabled2){
                newEventVC(evente: $events)
        }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

