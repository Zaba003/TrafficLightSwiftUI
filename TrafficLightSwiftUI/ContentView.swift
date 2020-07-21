//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Кирилл Заборский on 21.07.2020.
//  Copyright © 2020 Кирилл Заборский. All rights reserved.
//

import SwiftUI

enum CurrentLight: Double {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var redL = ColorCircle(color: .red)
    @State private var yellowL = ColorCircle(color: .yellow)
    @State private var greenL = ColorCircle(color: .green)
    
    var body: some View {
        ZStack {
            Color.init(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    redL
                    yellowL
                    greenL
                }
                .padding()
                Spacer()
                Button(action: { self.switchLight() }) {
                    Text("Переключить")
                        .font(.title)
                }.padding()
            }
        }
        
    }
    
    private func switchLight() {
        switch currentLight {
        case .red:
            redL.brightness = 0
            greenL.brightness = 0.6
            currentLight = CurrentLight.yellow
            print("red")
        case .yellow:
            redL.brightness = 0.6
            yellowL.brightness = 0
            currentLight = CurrentLight.green
            print("yelow")
        case .green:
            greenL.brightness = 0
            yellowL.brightness = 0.6
            currentLight = CurrentLight.red
            print("green")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
