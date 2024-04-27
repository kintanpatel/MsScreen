//
//  DeviceInfo.swift
//  MsScreen
//
//  Created by kintan on 27/04/24.
//

import Foundation

import UIKit

struct DeviceInfo {
    static func deviceModel() -> String {
        return UIDevice.current.model
    }
    
    static func iOSVersion() -> String {
        return UIDevice.current.systemVersion
    }
    
    static func screenSize() -> String {
        return "\(UIScreen.main.bounds.size.width) x \(UIScreen.main.bounds.size.height)"
    }
    
    static func screenResolution() -> String {
        return "\(UIScreen.main.nativeBounds.size.width) x \(UIScreen.main.nativeBounds.size.height) px"
    }
    static func screenDensity() -> String {
            let scale = UIScreen.main.scale
            let ppi: CGFloat = {
                switch UIScreen.main.nativeBounds.size.height {
                case 480:
                    return 163 // iPhone 4, 4S
                case 960:
                    return 326 // iPhone 5, 5S, 5C, SE (1st generation)
                case 1136:
                    return 326 // iPhone SE (2nd generation)
                case 1334:
                    return 326 // iPhone 6, 6S, 7, 8, SE (2nd generation)
                case 1920, 2208:
                    return 401 // iPhone 6 Plus, 6S Plus, 7 Plus, 8 Plus
                case 2436:
                    return 458 // iPhone X, XS, 11 Pro
                case 2688:
                    return 458 // iPhone XS Max, 11 Pro Max
                case 2778:
                    return 458 // iPhone 12 Pro Max
                default:
                    return 326 // Default value
                }
            }()
            return "\(Int(ppi * scale)) dpi"
        }
    static func refreshRate() -> String {
          if UIScreen.main.traitCollection.displayGamut == .P3 && UIScreen.main.maximumFramesPerSecond == 120 {
              return "120 Hz (ProMotion)"
          } else {
              return "60 Hz"
          }
      }
    
    static func aspectRatio() -> String {
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        let gcd = greatestCommonDivisor(Int(width), Int(height))
        let aspectWidth = Int(width) / gcd
        let aspectHeight = Int(height) / gcd
        return "\(aspectWidth):\(aspectHeight)"
    }
    
    static func greatestCommonDivisor(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return abs(a)
    }
}
