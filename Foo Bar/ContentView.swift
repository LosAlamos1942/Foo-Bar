//
//  ContentView.swift
//  Foo Bar
//
//  Created by Induran Aderinto  on 8/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        Text("\(counter)")
                    .font(.system(size: 128))
                    .multilineTextAlignment(.center)
                    .preferredColorScheme(.dark)
                    .onTapGesture {
                        counter += 1
                    }
                    .onLongPressGesture {
                        counter = 0
                    }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
