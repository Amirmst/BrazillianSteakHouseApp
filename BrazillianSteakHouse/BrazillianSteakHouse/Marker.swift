//
//  Marker.swift
//  BrazillianSteakHouse
//
//  Created by Amir Mostafavi on 1/17/20.
//  Copyright © 2020 amir. All rights reserved.
//

import SwiftUI

struct Marker: View {
    @State var wantMore = true
    
    var body: some View {
        ZStack(alignment: .center) {
          Circle()
            .frame(width: 300, height: 300)
            .shadow(radius: 15)
            .overlay(CircleBorder())
            .foregroundColor(wantMore ? .green : .red)
            .onTapGesture(perform: {self.wantMore.toggle()})
        }
        .rotation3DEffect(.degrees(wantMore ? 0 : 180), axis: (x: 0, y: 10, z: 0))
        .animation(.default)
    }
}

struct CircleBorder: View {
    
    var goldColor: Color {
        Color.init(red: 252/255, green: 194/255, blue: 0)
    }
    
    var body: some View {
        Circle()
            .stroke(goldColor, lineWidth: 8)
            .frame(width: 300, height: 300)
            .overlay(
                Image("bbq")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .colorInvert())
    }
}

struct Marker_Previews: PreviewProvider {
    static var previews: some View {
        Marker()
    }
}
