//
//  ContentView.swift
//  Traffic light 2
//
//  Created by Карина on 19.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State var redLight = 0.5
    @State var yellowLight = 0.5
    @State var greenLight = 0.5
    @State var trafficOn = "Светофор включен"
    @State var trafficOf = "Свефтофор выключен"
    var body: some View {
        VStack {
            CircleView(color: .red, opocity: redLight)
            CircleView(color: .yellow, opocity: yellowLight)
            CircleView(color: .green, opocity: greenLight)
            Spacer(minLength: 20)
            Text("\(trafficOf)")
            Button (action: {
                trafficLight()
            }) {
                Text("Go")
                    .font(.title)
                    .foregroundColor(.white)
            }
            .tint(.black)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
            
        }
        
    }
    
    private func trafficLight() {
        trafficOf = trafficOn
        if redLight == 0.5, yellowLight == 0.5, greenLight == 0.5 {
            redLight = 1
        } else if redLight == 1, yellowLight == 0.5, greenLight == 0.5 {
            redLight = 0.5
            yellowLight = 1
        } else if yellowLight == 1, greenLight == 0.5 {
            yellowLight = 0.5
            greenLight = 1
            
        } else if greenLight == 1 {
            redLight = 0.5
            yellowLight = 0.5
            greenLight = 0.5
           
            
            
        }
    }
    
 
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
