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
    @State private var color = Color.black
    
    var body: some View {
        ZStack {
            color.ignoresSafeArea()
            Text(display)
                .font(.system(size: 128))
                .multilineTextAlignment(.center)
                .preferredColorScheme(.dark)
                .onTapGesture {
                    counter += 1
                    if counter % 3 == 0 && counter % 5 == 0 {
                        display = "Foo Bar"
                        color = Color.red
                    } else if counter % 3 == 0 {
                        display = "Foo"
                        color = Color.green
                    } else if counter % 5 == 0 {
                        display = "Bar"
                        color = Color.yellow
                    }
                    
                    
                    
                    else {
                        
                        display = String(counter)
                        
                    }
                }
                .onLongPressGesture {
                    counter = 0
                    display = "0"
                    color = Color.black 
                }
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
