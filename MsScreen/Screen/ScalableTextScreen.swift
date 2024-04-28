//
//  ScalableTextScreen.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI

struct ScalableTextListScreen: View {
    var body: some View {
        AppScreenView(showBackAsButton: true){
            List(5..<51, id: \.self) { index in
                ScalableTextListItem(fontSize: CGFloat(index) * 2)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .listRowBackground(Color.accentColor)
            }
            .listStyle(.plain)
        }
    }
}

struct ScalableTextListItem: View {
    let fontSize: CGFloat
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack {
                ForEach(0..<10){ _ in
                    Text("\(Int(fontSize))dpi")
                        .font(.system(size: fontSize))
                        .applyapplyForegroundStyle(.white)
                        .lineLimit(1)
                }
            }
        }
    }
}

#Preview(body: {
    ScalableTextListScreen()
})

 
