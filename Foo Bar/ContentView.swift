//
//  ContentView.swift
//  Foo Bar
//
//  Created by Induran Aderinto  on 8/25/22.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var display = "0"
    
    
    var body: some View {
        Text(display)
            .font(.system(size: 128))
            .multilineTextAlignment(.center)
            .preferredColorScheme(.dark)
            .onTapGesture {
                if counter % 3 == 0 {
                    display = "Foo"
                }
                else {
                    display = String(counter)
                }
            }
            .onLongPressGesture {
                display = "Foo Bar"
            }
        
        
        
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
