//
//  Gradient+Ext.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI

extension LinearGradient {
    static func rainbow() -> LinearGradient {
        return LinearGradient(
            gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
}
