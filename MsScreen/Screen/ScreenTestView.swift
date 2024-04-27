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
    
    @State private var yOffset: CGFloat = 0
    
    var body: some View {
        VStack {
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
            yOffset = UIScreen.main.bounds.height
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
                                Color.black.opacity(0.1)
                            }
                            VStack{
                                Text("\(columnSpeeds[index].formatted()) ms").font(.system(size: 12)).lineLimit(1).foregroundColor(.white)
                                SpeedColumnView(speed: columnSpeeds[index], color: .blue)
                                
                            }
                            Spacer()
                        }
                    }
                }
                Spacer()
            }.padding().padding(.top,40)
        }
    }
}


#Preview(body: {
    ScreenTestView()
    
})
