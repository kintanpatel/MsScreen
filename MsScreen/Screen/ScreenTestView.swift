//
//  SpeedColumnView.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI

struct SpeedColumnView: View {
    let speed: Double
    let color: Color
    let columnWidth: CGFloat = 50
    let columnHeight: CGFloat = 200
    
    @State private var yOffset: CGFloat = 0
    
    var body: some View {
        VStack {
            Text(String(format: "%.1f ms", speed))
                .foregroundColor(.white)
                .padding(.bottom, 5)
            Rectangle()
                .fill(color)
                .frame(width: columnWidth, height: columnHeight)
                .offset(y: yOffset)
        }
        .onAppear {
            animateColumn()
        }
    }
    
    func animateColumn() {
        let animationDuration = speed / 1000 // Convert speed to seconds
        withAnimation(Animation.linear(duration: animationDuration).repeatForever(autoreverses: true)) {
            yOffset = -columnHeight
        }
    }
}

struct ScreenTestView: View {
    let columnSpeeds: [Double] = [50, 100, 150, 200, 250] // Example speeds in milliseconds
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(0..<columnSpeeds.count) { index in
                SpeedColumnView(speed: columnSpeeds[index], color: .blue)
            }
        }
        .padding()
    }
}

struct ScreenTestView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTestView()
    }
}
