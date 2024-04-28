//
//  SplashScreenView.swift
//  MsScreen
//
//  Created by kintan on 28/04/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.5
    @State private var opacity = 0.5
    var body: some View {
        if isActive {
            ContentView()
        }else{
            ZStack {
                LinearGradient(colors: [.yellow,.green], startPoint: .top, endPoint: .bottom)
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 100,height: 100)
                    
                    Text("Screen Test App")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.00
                        self.opacity = 1.00
                    }
                }
            }.expandViewOutOfSafeArea(.all).onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                    self.isActive = true
                }
            })
        }
    }
}

#Preview {
    SplashScreenView()
}
