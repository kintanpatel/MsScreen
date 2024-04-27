//
//  CategoryView.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI


struct CategoryView : View {
    var category : Category
    
    var body: some View {
        HStack{
            Image(category.image).resizable().frame(width: 50, height: 50).padding(.horizontal,16)
            
            VStack(alignment: .leading){
                Text(category.name).fontWeight(.bold).foregroundStyle(.white)
                Text(category.desc).font(.system(size: 12)).foregroundStyle(.white)
            }
        }.frame(maxWidth: .infinity,alignment: .leading).padding(.vertical,20).cornerRadius(20.0).overlay( /// apply a rounded border
            RoundedRectangle(cornerRadius: 20)
                .stroke(.white, lineWidth: 2)
        )
    }
}

#Preview {
    ZStack{
        Color.accentColor
        CategoryView(category: Category(name: "Demo", desc: "Demo", image: "category1"))
    }
}
