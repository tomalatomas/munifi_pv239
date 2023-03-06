//
//  Event.swift
//  f1nish
//
//  Created by Tomáš Tomala on 06.03.2023.
//

import Foundation

enum EventType: String {
    case fp1 = "Free Practice 1"
    case fp2 = "Free Practice 2"
    case fp3 = "Free Practice 3"
    case quali = "Qualifying"
    case sprint = "Spring"
    case race = "Race"
    case unknown = "Unknown"
}

// define a superclass
class Event {
    let name: EventType
    let start: Date
    let standings: [EventResult]
    
    init(name: EventType, start: Date, standings: [EventResult]) {
        self.name = name
        self.start = start
        self.standings = standings
    }

}

class Race: Event {
    let numberOfLaps: Int
    let numberOfLapsFinished: Int = 0
    
    init(numberOfLaps: Int, name: EventType, start: Date, standings: [EventResult]) {
        self.numberOfLaps = numberOfLaps
        super.init(name: name, start: start, standings: standings)

    }
}
