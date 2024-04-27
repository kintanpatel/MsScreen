//
//  FullScreenColorView.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI

struct FullScreenColorView: View {
    var color : Color
    
    var body: some View {
        AppScreenView(showBackAsButton: true) {
            color
        }
    }
}

#Preview {
    FullScreenColorView(color: .red)
}
