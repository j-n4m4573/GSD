//
//  GSDTask.swift
//  GSDTests
//
//  Created by Maurice G on 11/28/22.
//

import Foundation

enum GSDPriority: String, CaseIterable {
    case high
    case medium
    case low
    
    static var allCases: [GSDPriority] {
        return [GSDPriority.high, GSDPriority.medium, GSDPriority.low]
    }
}

enum GSDEnergy: CaseIterable {
    case highReq
    case mediumReq
    case lowReq
}

struct GSDTask {
    let title: String
    let date: Date
    let description: String
    let impact: String
    let priority: GSDPriority
}
