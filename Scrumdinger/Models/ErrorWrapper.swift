//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Nikita on 2/8/23.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidence: String
    
    init(id: UUID = UUID(), error: Error, guidence: String) {
        self.id = id
        self.error = error
        self.guidence = guidence
    }
}
