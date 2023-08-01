//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by Nikita on 1/8/23.
//

import Foundation

class ScrumStore: ObservableObject {
    
    @Published var scrum: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                            in: .userDomainMask,
                            appropriateFor: nil,
                            create: false)
        .appendingPathComponent("scrum.data")
    }
}
