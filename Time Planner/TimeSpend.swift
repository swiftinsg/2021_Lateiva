//
//  TimeSpend.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import Foundation

struct Activity : Identifiable, Codable {
    var id = UUID()
    var name1 : String
    var timeSpending : String
    var Percentage: String
    var Priority : String
    var minTime : Double
    var maxTime: Double
}


