//
//  ColorListView.swift
//  MsScreen
//
//  Created by kintan on 26/04/24.
//

import SwiftUI

struct ColorListView: View {
    var body: some View {
        AppScreenView {
            VStack{
                HStack{
                    NavigationLink {
                        ZStack{
                            FullScreenColorView(color: .red)
                        }
                    } label: {
                        ColorCell(color: .red)
                    }
                    NavigationLink {
                        ZStack{
                            FullScreenColorView(color: .green)
                        }
                    } label: {
                        ColorCell(color: .green)
                    }
                    NavigationLink {
                        ZStack{
                            FullScreenColorView(color: .blue)
                        }
                    } label: {
                        ColorCell(color: .blue)
                    }
                    
                    
                }
                HStack{
                    NavigationLink {
                        ZStack{
                            FullScreenColorView(color: .yellow)
                        }
                    } label: {
                        ColorCell(color: .yellow)
                    }
                    NavigationLink {
                        ZStack{
                            FullScreenColorView(color: Color(red: 0, green: 255/255, blue: 255/255))
                        }
                    } label: {
                        ColorCell(color: Color(red: 0, green: 255/255, blue: 255/255))
                    }
                    
                    NavigationLink {
                        AppScreenView(showBackAsButton:true) {
                            RambowCell()
                        }
                    } label: {
                        RambowCell()
                            .frame(width: 100, height: 100)
                    }
                }
            }
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
