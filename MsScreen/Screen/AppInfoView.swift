//
//  AppInfoView.swift
//  MsScreen
//
//  Created by kintan on 26/04/24.
//

import SwiftUI

struct AppInfoView: View {
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    var body: some View {
        AppScreenView{
            VStack(alignment : .leading){
                Text("Our app is the simplest way to check if you have any dead pixels on your screen. Our dead pixel test app is an easy and convenient way for you to check if your screen has dead pixels. Our test will display various colors and patterns on your screen, allowing you to identify any dead pixels that may be present.").font(.system(size: 14)).foregroundStyle(.white).padding()
                Text("How to use:").font(.title3).foregroundStyle(.white)
                HowToUseLabel(text: "1. Make sure your screen is as clean as can be. If it is not, you might mistake dust or dirt for a dead pixel. To prepare your screen to be tested for dead pixels, grab a piece of soft cloth, preferably a high-density one. Then, gently and carefully rub every inch of your screen and make sure it is crystal clear.")
                HowToUseLabel(text:"2. Click on the test-button to start testing your screen for dead pixels.")
                HowToUseLabel(text:"3. Click on the Got it button then you end up testing your display.")
            }.padding()
        }
    }
}

struct HowToUseLabel : View {
    var text : String
    var body: some View{
        Text(text).font(.system(size: 12)).foregroundStyle(.white).padding(.vertical,2).padding(.horizontal,24)
    }
}

#Preview {
    AppInfoView()
}
