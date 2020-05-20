//
//  CustomButtonStyle.swift
//  TicTacToe
//
//  Created by Kathiresan on 20/05/20.
//  Copyright © 2020 Kathiresan. All rights reserved.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .frame(width: 90, height: 90)
            .padding()
            .foregroundColor(Color.black)
            .background(Color.white)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
        
    }
}
