//
//  SSSecureInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import Foundation

public enum SSSecureInfo {

    public static let isJailBroken: Bool = {
        let cydiaPath = "/Applications/Cydia.app"
        let aptPath = "/private/var/lib/apt/"
        return [cydiaPath, aptPath].map({ FileManager.default.fileExists(atPath: $0) }).contains(true)
    }()
}
