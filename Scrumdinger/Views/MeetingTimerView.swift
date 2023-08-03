//
//  MeetingTimerView.swift
//  Scrumdinger
//
//  Created by Nikita on 3/8/23.
//

import SwiftUI

struct MeetingTimerView: View {
    
    let speakers: [ScrumTimer.Speaker]
    let theme: Theme
    
    private var currentSpeaker: String {
        speakers.first(where: { !$0.isCompleted })?.name ?? "Someone"
    }
    
    var body: some View {
        
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack {
                    Text(currentSpeaker)
                        .font(.title)
                    Text("is speaking")
                }
                .accessibilityElement(children: .combine)
                .foregroundColor(theme.accentColor)
            }
    }
}


struct MeetingTimerView_Previews: PreviewProvider {
    
    static var speakers: [ScrumTimer.Speaker] {
        [ScrumTimer.Speaker(name: "Nik", isCompleted: true),
         ScrumTimer.Speaker(name: "Asela", isCompleted: true)]
    }
    
    static var previews: some View {
        MeetingTimerView(speakers: speakers, theme: .buttercup)
    }
}
