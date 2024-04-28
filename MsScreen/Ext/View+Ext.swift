//
//  View+Ext.swift
//  MsScreen
//
//  Created by kintan on 28/04/24.
//

import Foundation
import SwiftUI

public extension View {
    @ViewBuilder
    func expandViewOutOfSafeArea(_ edges: Edge.Set = .all) -> some View {
        if #available(iOS 14, *) {
            self.ignoresSafeArea(edges: edges)
        } else {
            self.edgesIgnoringSafeArea(edges) // deprecated for iOS 13.0–15.2, look upper
        }
    }
}

struct ForegroundModifier: ViewModifier{
    
    let color: Color
    
    func body(content: Content) -> some View {
        if #available(iOS 15.0, *){
            content.foregroundStyle(color)
        }else{
            content.foregroundColor(color)
        }
    }
}
extension View{
    func applyapplyForegroundStyle(_ color: Color) -> some View{
        modifier(ForegroundModifier(color: color))
    }
}
