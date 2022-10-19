//
//  CircleView.swift
//  Traffic light 2
//
//  Created by Карина on 19.10.2022.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opocity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opocity)
            .frame(width: 150, height: 150)
            
        
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opocity: 1)
    }
}
