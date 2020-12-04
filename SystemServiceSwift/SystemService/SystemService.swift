//
//  SystemService.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//
import Foundation
import UIKit

public enum SystemService {

    public static let numberProcessors = SSProcessorInfo.numberProcessors
    public static var numberActiveProcessors = SSProcessorInfo.numberActiveProcessors
    
    public static var processID = SSProcessInfo.processID

    public static var isJailBroken = SSSecureInfo.isJailBroken

    public static var processSystemUpTime = SSHardwareInfo.processSystemUpTime
    public static let systemName = SSHardwareInfo.systemName
    public static let systemVersion = SSHardwareInfo.systemVersion
    public static let systemDeviceType: String = SSHardwareInfo.systemDeviceType
    public static let systemDeviceTypeFormattedName: String = SSHardwareInfo.systemDeviceTypeFormattedName

    public static let applicationVersion: String = SSApplicationInfo.applicationVersion
    public static var clipboardContent: String = SSApplicationInfo.clipboardContent

    public static var batteryLevel: Double = SSBatteryInfo.batteryLevel
    public static var charging: Bool = SSBatteryInfo.charging
    public static var fullyCharged: Bool = SSBatteryInfo.fullyCharged
    
    public static var headphonesAttached: Bool = SSAccessoryInfo.headphonesAttached
    public static var accessoriesAttached: Bool = SSAccessoryInfo.accessoriesAttached
    
}


