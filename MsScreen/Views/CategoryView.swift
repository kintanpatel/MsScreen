//
//  CategoryView.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI

// View for displaying a category with an image, name, and description
struct CategoryView: View {
    var category: Category // Category model containing name, description, and image
    
    var body: some View {
        HStack {
            // Display category image
            Image(category.image)
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.horizontal, 16)
            
            VStack(alignment: .leading) {
                // Display category name
                Text(category.name)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                // Display category description
                Text(category.desc)
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.vertical, 20)
        .cornerRadius(20.0)
        .overlay(
            // Apply a rounded border
            RoundedRectangle(cornerRadius: 20)
                .stroke(.white, lineWidth: 2)
        )
    }
}

#Preview {
    ZStack {
        // Background color
        Color.accentColor
        
        // Display a demo category
        CategoryView(category: Category(name: "Demo", desc: "Demo", image: "category1"))
    }
}
