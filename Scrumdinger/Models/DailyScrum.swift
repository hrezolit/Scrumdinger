//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Nikita on 3/3/23.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Books reading", attendees: ["Aselya", "Dobrynia", "Radomir", "Svyatozar"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "Alchemic studing", attendees: ["Nik", "Jenny"], lengthInMinutes: 20, theme: .orange),
        DailyScrum(title: "Miracle training", attendees: ["Nik", "Aselya", "Radomir"], lengthInMinutes: 30, theme: .sky),
        DailyScrum(title: "Broom flying", attendees: ["Bill", "George", "Pumpy", "Sineora"], lengthInMinutes: 15, theme: .lavender),
        DailyScrum(title: "Praying", attendees: ["Edgar", "Ashley", "Milka"], lengthInMinutes: 5, theme: .bubblegum),
    ]
}
