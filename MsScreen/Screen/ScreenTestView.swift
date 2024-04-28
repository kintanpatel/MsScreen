//
//  SpeedColumnView.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI

private struct SpeedColumnView: View {
    let speed: Double
    let color: Color
    let columnWidth: CGFloat = 60
    let columnHeight: CGFloat = 60
    
    @State private var yOffset: CGFloat = 0 // Initial offset for animation
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(color)
                .frame(width: columnWidth, height: columnHeight)
                .offset(y: yOffset) // Apply vertical offset for animation
        }
        .onAppear {
            animateColumn() // Start animation when the view appears
        }
    }
    
    // Function to animate the column's movement
    func animateColumn() {
        let animationDuration = speed / 1000 // Convert speed to seconds
        withAnimation(Animation.linear(duration: animationDuration).repeatForever(autoreverses: true)) {
            yOffset = UIScreen.main.bounds.height // Move the column to the bottom of the screen
        }
    }
}

struct ScreenTestView: View {
    let columnSpeeds: [Double] = [3000, 2000, 1000, 500, 250] // Example speeds in milliseconds
    
    @State private var lineColor : Color  = .red
    
    var body: some View {
        AppScreenView(showBackAsButton : true){
            VStack(alignment: .leading) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(0..<columnSpeeds.count,id: \.self) { index in
                        ZStack(alignment : .top){
                            if (index%2 != 0){
                                Color.black.opacity(0.1) // Add background color for alternating columns
                            }
                            VStack{
                                Text("\(columnSpeeds[index].formatted()) ms").font(.system(size: 12)).lineLimit(1).foregroundColor(.white) // Display speed label
                                SpeedColumnView(speed: columnSpeeds[index], color: .blue) // Display animated column
                                
                            }
                            Spacer() // Spacer to push columns to the left
                        }
                    }
                }
                Spacer() // Spacer to push content to the top
            }.padding().padding(.top,40) // Apply padding
        }
    }
}

#Preview(body: {
    ScreenTestView() // Display preview of ScreenTestView
})
