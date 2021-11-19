//
//  ContentView.swift
//  Time Planner
//
//  Created by sanjithsethu on 18/11/21.
//

import SwiftUI

struct ContentView: View {
    
    var events = [Event(name: "Sample", Location: "Sample", date: "00/00/0000", time: "00:00")]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("Today,")
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 0.4627450980392157, green: 0.4235294117647059, blue: 0.8196078431372549))
                .multilineTextAlignment(.leading)
                .font(.largeTitle)
                .padding(.leading)
//                .font(.headline)
                
            
            Text("Tap on one of your events to continue")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .padding()
                
            List(events) { events in
                VStack(alignment:.leading){
                Text(events.name)
                        .font(.system(size: 40))
                        .foregroundColor(Color.purple)
                        .bold()
                    Spacer()
                Text(events.Location)
                        .font(.system(size: 20))
                        .foregroundColor(.purple)
                        Spacer()
                Text(events.time)
                        .font(.system(size: 20))
                        .foregroundColor(.purple)
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
