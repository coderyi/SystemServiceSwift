//
//  SSApplicationInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import UIKit

public enum SSApplicationInfo {
    
    public static let applicationVersion: String = {
        let version: String = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
        return version
    }()

    public static var clipboardContent: String = {
        var pasteBoard = UIPasteboard.general
        var clipboardContent = pasteBoard.string
        if (clipboardContent == nil) { return "" }
        return clipboardContent as! String
    }()
}
