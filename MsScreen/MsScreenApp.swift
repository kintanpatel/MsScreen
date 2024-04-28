//
//  MsScreenApp.swift
//  MsScreen
//
//  Created by kintan on 26/04/24.
//

import SwiftUI


@available(iOS 14.0, macOS 10.16, *)
struct MsScreenApp {
    @main
    struct MsScreenApp: App {

        var body: some Scene {
            WindowGroup {
                SplashScreenView()
            }
        }
    }
}
