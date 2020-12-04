//
//  DemoViewController.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import UIKit

class DemoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(white: 1, alpha: 1)
        print(SSHardwareInfo.systemDeviceTypeFormattedName)
        let applicationVersion = SSApplicationInfo.applicationVersion
        let clipboardContent = SSApplicationInfo.clipboardContent
        print(applicationVersion)
        print(clipboardContent)
        let batteryLevel = SSBatteryInfo.batteryLevel
        print(batteryLevel)
        print(SSLocalizationInfo.language + SSLocalizationInfo.country)
        print(SSAccessoryInfo.headphonesAttached)
        print(SSMemoryInfo.totalMemory)
    }

}
