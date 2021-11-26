//
//  Time_PlannerApp.swift
//  Time Planner
//
//  Created by sanjithsethu on 18/11/21.
//

import SwiftUI

@main
struct Time_PlannerApp: App {
    
    @ObservedObject var eventsData = EventsData()
    @ObservedObject var setsaData = ActivitySetssData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(events: $eventsData.events, setsa: $setsaData.setsa)
        }
    }
}
