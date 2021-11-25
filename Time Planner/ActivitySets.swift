//
//  ActivitySets.swift
//  Time Planner
//
//  Created by sanjithsethu on 21/11/21.
//

import Foundation

struct activitySets : Identifiable, Equatable {
    var id = UUID()
    var name : String
    var activities : [Activites]
}
