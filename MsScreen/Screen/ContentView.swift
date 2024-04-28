//
//  ContentView.swift
//  MsScreen
//
//  Created by kintan on 26/04/24.
//

import SwiftUI

struct ContentView: View {
    
    var category : [Category] = [
        Category(name: "MS Test", desc: "Testing the display response.", image: "category1"),
        Category(name: "Text Test",desc: "Testing the display of text on the display", image: "category2"),
        Category(name: "Color Test", desc : "Testing the display of colors on the display",image: "category4"),
        Category(name: "Introduction", desc : "Information about the application",image: "category5")]
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading){
                LinearGradient(colors: [.yellow,.green], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
                VStack(alignment : .leading,spacing : 16){
                    NavigationLink {
                        ScreenTestView().navigationBarHidden(true)
                    } label: {
                        CategoryView(category: category[0])
                    }
                    NavigationLink {
                        ScalableTextListScreen().navigationBarHidden(true)
                    } label: {
                        CategoryView(category: category[1])
                    }
                    NavigationLink {
                        ColorListView().navigationBarHidden(true)
                    } label: {
                        CategoryView(category: category[2])
                    }
                    NavigationLink {
                        AppInfoView().navigationBarHidden(true)
                    } label: {
                        CategoryView(category: category[3])
                    }
                    PhoneInfoView()
                }.padding()
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}





