//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Nikita on 2/8/23.
//

import SwiftUI

struct ErrorView: View {
    
    let errorWraper: ErrorWrapper
    
    var body: some View {
        VStack {
            Text("An error has occurred!")
                .font(.title)
                .padding(.bottom)
            Text(errorWraper.error.localizedDescription)
                .font(.headline)
            Text(errorWraper.guidence)
                .font(.caption)
                .padding(.top)
            
            Spacer()
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(16)
    }
}

struct ErrorView_Previews: PreviewProvider {
    
    enum SampleError: Error {
        case errorRequired
    }
    
    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired, guidence: "You can safely ignore this error.")
    }
    
    static var previews: some View {
        ErrorView(errorWraper: wrapper)
    }
}
