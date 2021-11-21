//
//  Events.swift
//  Time Planner
//
//  Created by sanjithsethu on 19/11/21.
//

import Foundation

struct Event : Identifiable, Equatable, Codable {
    var id = UUID()
    var name : String
    var Location : String
    var date: String
    var time : String
}
