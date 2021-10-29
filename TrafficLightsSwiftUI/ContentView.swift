//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Andrey Vanakoff on 25/10/2021.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorLight(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                ColorLight(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                ColorLight(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                
                Spacer()
                
                ChangeColorButton(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    
                    nextColor()
                }
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

