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
                .padding([.top, .leading, .trailing])
            //                .font(.headline)
            
            Text("Tap on one of your events to continue")
                .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                .padding([.top, .leading, .trailing])
            
            List(events) { events in
                VStack(alignment:.leading){
                    
                    Text(events.name)
                        .font(.system(size: 40))
                        .foregroundColor(Color(hue: 0.78, saturation: 1.0, brightness: 0.722))
                        .fontWeight(.heavy)
                    
                    Spacer()
                    Text(events.Location)
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                    
                    Spacer()
                    Text(events.time)
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 0.4235294117647059, green: 0.11764705882352941, blue: 0.5254901960784314))
                    Spacer()
                }.listRowBackground(Color(red: 0.9568627450980393, green: 0.9215686274509803, blue: 1.0))
            }
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
