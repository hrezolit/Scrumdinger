//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by Nikita on 1/8/23.
//

import Foundation

@MainActor
class ScrumStore: ObservableObject {
    
    @Published var scrums: [DailyScrum] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                            in: .userDomainMask,
                            appropriateFor: nil,
                            create: false)
        .appendingPathComponent("scrum.data")
    }
    
    func load() async throws {
        let task = Task<[DailyScrum], Error> {
            
            let filerURL = try Self.fileURL()
            guard let data = try? Data(contentsOf: filerURL) else { return [] }
            let dailyScrum = try JSONDecoder().decode([DailyScrum].self, from: data)
            
            return dailyScrum
        }
        let scrums = try await task.value
        self.scrums = scrums
    }
}
