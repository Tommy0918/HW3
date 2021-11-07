//
//  smallgame.swift
//  HW3
//
//  Created by 吳承軒 on 2021/11/7.
//

import Foundation
import SwiftUI

struct smallgame: View {
    
    @State private var rotateDegree: Double = 0
    
    var body: some View {
        
        VStack {
            Button("peter 好帥") {
                rotateDegree = 360
            }
            .font(.title)
            Image("handsomepeter1")
                .rotationEffect(.degrees(rotateDegree))
                .animation(
                    .linear(duration: 5)
                        .repeatForever(autoreverses: false),
                    value: rotateDegree
                )
        }
        
    }
}
