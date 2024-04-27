//
//  ColorListView.swift
//  MsScreen
//
//  Created by kintan on 26/04/24.
//

import SwiftUI

struct ColorListView: View {
    let colors: [Color] = [.red, .green, .blue, .yellow, .cyan, .pink, .black, .white, .clear]
    
    var body: some View {
        AppScreenView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))], spacing: 10) {
                ForEach(colors, id: \.self) { color in
                    if color == .clear {
                        NavigationLink {
                            AppScreenView(showBackAsButton:true) {
                                RambowCell()
                            }
                        } label: {
                            RambowCell()
                                .frame(width: 100, height: 100)
                        }

                        
                    } else {
                        NavigationLink {
                            ZStack{
                                FullScreenColorView(color: color)
                            }
                        } label: {
                            ColorCell(color: color)
                        }

                        
                    }
                }
            }.padding()
            
        }
        
    }
    
}
struct ColorCell: View {
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(color)
            .frame(width: 100, height: 100)
    }
}

struct RambowCell: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(LinearGradient.rainbow())
    }
}

#Preview {
    NavigationView{
        ColorListView()
    }
    
}
