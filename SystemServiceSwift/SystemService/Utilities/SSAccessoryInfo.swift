//
//  SSAccessoryInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import UIKit
import AVFoundation
import ExternalAccessory

public final class SSAccessoryInfo {
    
    public static var headphonesAttached: Bool = {
        var route: AVAudioSessionRouteDescription = AVAudioSession.sharedInstance().currentRoute
        for desc in route.outputs {
            var headphonesAttached = desc.portType == AVAudioSession.Port.headphones
            if headphonesAttached  {
                return true
            }
        }
        return false
    }()
    
    public static var accessoriesAttached: Bool = {
        var numberOfAccessoriesConnected = EAAccessoryManager.shared().connectedAccessories.count
        if (numberOfAccessoriesConnected > 0) {
            return true
        }
        return false
    }()
}
