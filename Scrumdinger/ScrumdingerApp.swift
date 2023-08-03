//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Nikita on 29/7/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
        
    @StateObject private var store = ScrumStore()
    @State private var errorWrapper: ErrorWrapper?
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        errorWrapper = ErrorWrapper(error: error, guidence: "Try again later...")
                    }
                }
            }
                .task {
                    do {
                        try await store.load()
                    } catch {
                        errorWrapper = ErrorWrapper(error: error, guidence: "Scrumdinger will load sample data and continue.")
                    }
                }
                .sheet(item: $errorWrapper) {
                    store.scrums = DailyScrum.exampleData
                } content: { wrapper in
                    ErrorView(errorWraper: wrapper)
                }
        }
    }
}
