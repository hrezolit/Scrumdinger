//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Nikita on 30/7/23.
//

import SwiftUI

struct ThemePicker: View {
    
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemePicker_Preview: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}
