//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Nikita on 29/7/23.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trainlingIcon : Self { Self() }
    
}
