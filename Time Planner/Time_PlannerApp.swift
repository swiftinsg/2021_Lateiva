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
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView(events: $eventsData.events, setsa: $setsaData.setsa)
                .onAppear{
                    eventsData.load()
                    setsaData.load()
                }
                .onChange(of: scenePhase) { phase in
                    if phase == .inactive {
                        eventsData.save()
                        setsaData.save()
                    }
                }
        }
    }
}
