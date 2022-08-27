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
                counter += 1
                if counter % 3 == 0 && counter % 5 == 0 {
                    display = "Foo Bar"
                } else if counter % 3 == 0 {
                    display = "Foo"
                } else if counter % 5 == 0 {
                    display = "Bar"
                }
                
                
                
                else {
                    
                    display = String(counter)
                    
                }
            }
            .onLongPressGesture {
                counter = 0
                display = "0"
            }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
