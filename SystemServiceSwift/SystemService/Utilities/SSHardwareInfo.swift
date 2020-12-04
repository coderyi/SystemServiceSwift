//
//  SSHardwareInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import Foundation
import UIKit

public enum SSHardwareInfo {

    public static var processSystemUpTime: TimeInterval {
        return ProcessInfo.processInfo.systemUptime
    }

    public static func systemUptime(unitsStyle: DateComponentsFormatter.UnitsStyle) -> String? {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = unitsStyle
        return formatter.string(from: processSystemUpTime)
    }
    
    public static let systemName: String = {
        let device: UIDevice = .current
        return device.systemName;
    }()
    
    public static let systemVersion: String = {
        let device: UIDevice = .current
        return device.systemVersion;
    }()

    public static let systemDeviceType: String = {
        let device: UIDevice = .current
        return device.systemDeviceType;
    }()

    public static let systemDeviceTypeFormattedName: String = {
        let name = formattedName(modelName: systemDeviceType)
        return name ?? ""
    }()
    
    static func formattedName(modelName: String) -> String? {
        return list.first(where: { $0["modelName"] == modelName }).map({ ($0["formatted"] ?? "") })
    }
  
    private static let list = [
        [
          "modelName": "i386",
          "formatted": "32-bit Simulator"
        ],
        [
          "modelName": "x86_64",
          "formatted": "64-bit Simulator"
        ],
        [
          "modelName": "iPhone4,1",
          "formatted": "iPhone 4S"
        ],
        [
          "modelName": "iPhone4,1",
          "formatted": "iPhone 4S"
        ],
        [
          "modelName": "iPhone5,1",
          "formatted": "iPhone 5"
        ],
        [
          "modelName": "iPhone5,2",
          "formatted": "iPhone 5"
        ],
        [
          "modelName": "iPhone5,3",
          "formatted": "iPhone 5c (GSM)"
        ],
        [
          "modelName": "iPhone5,4",
          "formatted": "iPhone 5c (Global)"
        ],
        [
          "modelName": "iPhone6,1",
          "formatted": "iPhone 5s (GSM)"
        ],
        [
          "modelName": "iPhone6,2",
          "formatted": "iPhone 5s (Global)"
        ],
        [
          "modelName": "iPhone7,1",
          "formatted": "iPhone 6 Plus"
        ],
        [
          "modelName": "iPhone7,2",
          "formatted": "iPhone 6"
        ],
        [
          "modelName": "iPhone8,1",
          "formatted": "iPhone 6S"
        ],
        [
          "modelName": "iPhone8,2",
          "formatted": "iPhone 6S Plus"
        ],
        [
          "modelName": "iPhone8,4",
          "formatted": "iPhone SE"
        ],
        [
          "modelName": "iPhone9,1",
          "formatted": "iPhone 7 (CDMA)"
        ],
        [
          "modelName": "iPhone9,3",
          "formatted": "iPhone 7 (GSM)"
        ],
        [
          "modelName": "iPhone9,2",
          "formatted": "iPhone 7 Plus (CDMA)"
        ],
        [
          "modelName": "iPhone9,4",
          "formatted": "iPhone 7 Plus (GSM)"
        ],
        [
          "modelName": "iPhone10,1",
          "formatted": "iPhone 8 (CDMA)"
        ],
        [
          "modelName": "iPhone10,4",
          "formatted": "iPhone 8 (GSM)"
        ],
        [
          "modelName": "iPhone10,2",
          "formatted": "iPhone 8 Plus (CDMA)"
        ],
        [
          "modelName": "iPhone10,5",
          "formatted": "iPhone 8 Plus (GSM)"
        ],
        [
          "modelName": "iPhone10,3",
          "formatted": "iPhone X (CDMA)"
        ],
        [
          "modelName": "iPhone10,6",
          "formatted": "iPhone X (GSM)"
        ],
        [
          "modelName": "iPhone11,2",
          "formatted": "iPhone XS"
        ],
        [
          "modelName": "iPhone11,4",
          "formatted": "iPhone XS Max"
        ],
        [
          "modelName": "iPhone11,6",
          "formatted": "iPhone XS Max (China)"
        ],
        [
          "modelName": "iPhone11,8",
          "formatted": "iPhone XR"
        ],
        [
          "modelName": "iPhone12,1",
          "formatted": "iPhone 11"
        ],
        [
          "modelName": "iPhone12,3",
          "formatted": "iPhone 11 Pro"
        ],
        [
          "modelName": "iPhone12,5",
          "formatted": "iPhone 11 Pro Max"
        ],
        [
          "modelName": "iPhone12,8",
          "formatted": "iPhone SE (2nd Gen)"
        ],
        [
          "modelName": "iPhone13,1",
          "formatted": "iPhone 12 Mini"
        ],
        [
          "modelName": "iPhone13,2",
          "formatted": "iPhone 12"
        ],
        [
          "modelName": "iPhone13,3",
          "formatted": "iPhone 12 Pro"
        ],
        [
          "modelName": "iPhone13,4",
          "formatted": "iPhone 12 Pro Max"
        ],
        [
          "modelName": "iPad2,5",
          "formatted": "iPad Mini (Wifi)"
        ],
        [
          "modelName": "iPad2,6",
          "formatted": "iPad Mini (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad2,7",
          "formatted": "iPad Mini (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad3,1",
          "formatted": "iPad 3 (Wifi)"
        ],
        [
          "modelName": "iPad3,2",
          "formatted": "iPad 3 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad3,3",
          "formatted": "iPad 3 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad3,4",
          "formatted": "iPad 4 (Wifi)"
        ],
        [
          "modelName": "iPad3,5",
          "formatted": "iPad 4 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad3,6",
          "formatted": "iPad 4 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad4,1",
          "formatted": "iPad AIR (Wifi)"
        ],
        [
          "modelName": "iPad4,2",
          "formatted": "iPad AIR (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad4,3",
          "formatted": "iPad AIR (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad4,4",
          "formatted": "iPad Mini 2 (Wifi)"
        ],
        [
          "modelName": "iPad4,5",
          "formatted": "iPad Mini 2 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad4,6",
          "formatted": "iPad Mini 2 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad4,7",
          "formatted": "iPad Mini 3 (Wifi)"
        ],
        [
          "modelName": "iPad4,8",
          "formatted": "iPad Mini 3 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad4,9",
          "formatted": "iPad Mini 3 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad5,1",
          "formatted": "iPad Mini 4 (Wifi)"
        ],
        [
          "modelName": "iPad5,2",
          "formatted": "iPad Mini 4 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad5,3",
          "formatted": "iPad AIR 2 (Wifi)"
        ],
        [
          "modelName": "iPad5,4",
          "formatted": "iPad AIR 2 (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad6,3",
          "formatted": "iPad PRO 9.7\" (Wifi)"
        ],
        [
          "modelName": "iPad6,4",
          "formatted": "iPad PRO 9.7\" (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad6,7",
          "formatted": "iPad PRO 12.9\" (Wifi)"
        ],
        [
          "modelName": "iPad6,8",
          "formatted": "iPad PRO 12.9\" (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad6,11",
          "formatted": "iPad (5th generation) (Wifi)"
        ],
        [
          "modelName": "iPad6,12",
          "formatted": "iPad (5th generation) (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad7,1",
          "formatted": "iPad PRO 12.9\" (2nd Gen) (Wifi)"
        ],
        [
          "modelName": "iPad7,2",
          "formatted": "iPad PRO 12.9\" (2nd Gen) (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad7,3",
          "formatted": "iPad PRO 10.5\" (Wifi)"
        ],
        [
          "modelName": "iPad7,4",
          "formatted": "iPad PRO 10.5\" (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad7,5",
          "formatted": "iPad (6th Gen) (Wifi)"
        ],
        [
          "modelName": "iPad7,6",
          "formatted": "iPad (6th Gen) (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad7,11",
          "formatted": "iPad (7th Gen) (Wifi)"
        ],
        [
          "modelName": "iPad7,12",
          "formatted": "iPad (7th Gen) (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad8,1",
          "formatted": "iPad PRO 11\" (Wifi)"
        ],
        [
          "modelName": "iPad8,2",
          "formatted": "iPad PRO 11\" (1TB, Wifi)"
        ],
        [
          "modelName": "iPad8,3",
          "formatted": "iPad PRO 11\" (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad8,4",
          "formatted": "iPad PRO 11\" (1TB, Wifi + Cellular)"
        ],
        [
          "modelName": "iPad8,5",
          "formatted": "iPad PRO 12.9\" (3rd Gen) (Wifi)"
        ],
        [
          "modelName": "iPad8,6",
          "formatted": "iPad PRO 12.9\" (3rd Gen) (1TB, Wifi)"
        ],
        [
          "modelName": "iPad8,7",
          "formatted": "iPad PRO 12.9\" (3rd Gen) (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad8,8",
          "formatted": "iPad PRO 12.9\" (3rd Gen) (1TB, Wifi + Cellular)"
        ],
        [
          "modelName": "iPad8,9",
          "formatted": "iPad PRO 11\" (2nd Gen) (Wifi)"
        ],
        [
          "modelName": "iPad8,10",
          "formatted": "iPad PRO 11\" (2nd Gen) (1TB, Wifi)"
        ],
        [
          "modelName": "iPad8,11",
          "formatted": "iPad PRO 12.9\" (4th Gen) (Wifi)"
        ],
        [
          "modelName": "iPad8,12",
          "formatted": "iPad PRO 12.9\" (4th Gen) (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad11,1",
          "formatted": "iPad mini 5th Gen (Wifi)"
        ],
        [
          "modelName": "iPad11,2",
          "formatted": "iPad mini 5th Gen (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad11,3",
          "formatted": "iPad Air 3rd Gen (Wifi)"
        ],
        [
          "modelName": "iPad11,4",
          "formatted": "iPad Air 3rd Gen (Wifi + Cellular)"
        ],
        [
          "modelName": "iPad11,6",
          "formatted": "iPad 8th Gen (WiFi)"
        ],
        [
          "modelName": "iPad11,7",
          "formatted": "iPad 8th Gen (WiFi + Cellular)"
        ],
        [
          "modelName": "iPad13,1",
          "formatted": "iPad air 4th Gen (WiFi)"
        ],
        [
          "modelName": "iPad13,2",
          "formatted": "iPad air 4th Gen (WiFi + Celular)"
        ]
      ]
}

fileprivate extension UIDevice {

    var systemDeviceType: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
  }
}

