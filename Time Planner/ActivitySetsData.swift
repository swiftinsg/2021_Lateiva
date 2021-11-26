//
//  ActivitySetsData.swift
//  Time Planner
//
//  Created by sanjithsethu on 26/11/21.
//

import Foundation
import SwiftUI

class ActivitySetssData: ObservableObject {
    @Published var setsa: [ActivitySets] = []
    
    let sampleActivitySetss = [ActivitySets(name: "This is a sample", activities: [Activity(name1: "Create your own Now", timeSpending: "2 min", Percentage: "100%", Priority: "Click on the + icon", minTime: 1, maxTime: 5)])]
    
    func getArchiveURL() -> URL {
        let plistName = "activitySets.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedActivitySetss = try? propertyListEncoder.encode(setsa)
        try? encodedActivitySetss?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalActivitySetss: [ActivitySets]!
        
        if let retrievedActivitySetssData = try? Data(contentsOf: archiveURL),
            let decodedActivitySetss = try? propertyListDecoder.decode([ActivitySets].self, from: retrievedActivitySetssData) {
            finalActivitySetss = decodedActivitySetss
        } else {
            finalActivitySetss = sampleActivitySetss
        }
        
        setsa = finalActivitySetss
    }
}
