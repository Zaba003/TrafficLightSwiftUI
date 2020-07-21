//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Кирилл Заборский on 21.07.2020.
//  Copyright © 2020 Кирилл Заборский. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {

    let color: UIColor
    var brightness: Double?
    
    var body: some View {
        Color(color)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(lineWidth: 2))
            .brightness(brightness ?? 0.6)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, brightness: 0.6)
    }
}
