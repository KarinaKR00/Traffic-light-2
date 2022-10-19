//
//  ButtonView.swift
//  Traffic light 2
//
//  Created by Карина on 19.10.2022.
//

import SwiftUI

struct ButtonView: View {
    
    var body: some View {
        Button (action: {}) {
          Text("Go")
                .font(.title)
                .foregroundColor(.white)
        }
        .tint(.green)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
