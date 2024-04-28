//
//  PhoneInfoView.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation
import SwiftUI

struct PhoneInfoView  : View {
    let deviceModel = DeviceInfo.deviceModel()
    let iOSVersion = DeviceInfo.iOSVersion()
    let screenSize = DeviceInfo.screenSize()
    let screenResolution = DeviceInfo.screenResolution()
    let aspectRatio = DeviceInfo.aspectRatio()
    let screenDensity = DeviceInfo.screenDensity()
    let refreshRate = DeviceInfo.refreshRate()
    
    var body : some View{
        VStack(alignment: .leading,spacing: 5,content: {
            Text("Phone Information").font(.title).applyapplyForegroundStyle(.white)
            InfoView(label: "Device", value: deviceModel)
            InfoView(label: "iOS version", value: iOSVersion)
            InfoView(label: "Screen size", value: screenSize)
            InfoView(label: "Resolution (pixel)", value:screenResolution)
            InfoView(label: "Refresh rate", value: refreshRate)
            InfoView(label: "Aspect ratio", value: aspectRatio)
            InfoView(label: "Screen destiny", value: screenDensity)
        })
    }
}

struct InfoView : View {
    var label : String
    var value : String
    var body: some View{
        HStack{
            Text(label).applyapplyForegroundStyle(.white)
            Spacer()
            Text(value).applyapplyForegroundStyle(.white)
        }
    }
}

#Preview {
    ZStack{
        Color.accentColor
        PhoneInfoView()
    }
}
 
