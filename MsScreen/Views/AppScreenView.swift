//
//  ScreenView.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI

struct AppScreenView<Content : View>: View {
    
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
    // This is the generic content parameter
    let content: Content
    var showBackAsButton : Bool = false
    
    init(showBackAsButton : Bool = false ,@ViewBuilder contentBuilder: () -> Content){
        self.showBackAsButton = showBackAsButton
        self.content = contentBuilder()
    }
    
    var body: some View {
        ZStack{
            Color.accentColor
            //Contet Display Here
                content
            //End Of Content
            
            VStack{
                Spacer()
                Button(action: {
                    // Action when the button is tapped
                    presentationMode.wrappedValue.dismiss()
                }) {
                    if showBackAsButton{
                        Text("Got it")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.horizontal,40)
                            .padding(.vertical,12)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }else{
                        VStack {
                            Image("icBack").resizable().frame(width: 50,height: 50)
                            Text("Back")
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                    }
                }
            }.padding(.bottom)
        }.ignoresSafeArea()
    }
}


#Preview{
    AppScreenView(showBackAsButton: false){
        Text("Hello").foregroundStyle(.white)
    }
}
#Preview{
    AppScreenView(showBackAsButton: true){
        Text("Hello").foregroundStyle(.white)
    }
}
