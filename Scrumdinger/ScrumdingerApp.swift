//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Nikita on 29/7/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.exampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
