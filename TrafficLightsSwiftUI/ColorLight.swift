//
//  ColorLight.swift
//  TrafficLightsSwiftUI
//
//  Created by Andrey Vanakoff on 29/10/2021.
//

import SwiftUI

struct ColorLight: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white,
                     lineWidth: 4))
    }
}

struct ColorLight_Previews: PreviewProvider {
    static var previews: some View {
        ColorLight(color: .red, opacity: 1)
    }
}
