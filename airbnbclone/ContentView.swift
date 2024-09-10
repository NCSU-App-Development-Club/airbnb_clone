//
//  ContentView.swift
//  airbnbclone
//
//  Created by Rohan Nandula on 08/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.medium)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .fontWeight(.semibold)
                .font(.title)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
