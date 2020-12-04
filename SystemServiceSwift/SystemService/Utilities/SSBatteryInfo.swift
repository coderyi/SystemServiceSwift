//
//  SSBatteryInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import UIKit

public enum SSBatteryInfo {
    
    public static var batteryLevel: Double = {
        UIDevice.current.isBatteryMonitoringEnabled = true;
        var batteryLevel = 0.0
        var batteryCharge = UIDevice.current.batteryLevel;
        if (batteryCharge > 0.0) {
            batteryLevel = Double(batteryCharge * 100)
        } else {
            return -1
        }
        return batteryLevel
    }()
    
    public static var charging: Bool = {
        UIDevice.current.isBatteryMonitoringEnabled = true;
        if (UIDevice.current.batteryState == .charging || UIDevice.current.batteryState == .full) {
            return true
        }
        return false
    }()
    
    public static var fullyCharged: Bool = {
        UIDevice.current.isBatteryMonitoringEnabled = true;
        if (UIDevice.current.batteryState == .full) {
            return true
        }
        return false
    }()

}
