//
//  SSLocalizationInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import UIKit

public enum SSLocalizationInfo {
    
    public static var country: String = {
        return NSLocale.current.identifier
    }()

    public static var language: String = {
        var languageArray:[String] = NSLocale.preferredLanguages
        if (languageArray.count < 1) {
            return ""
        }
        var language = languageArray[0]
        return language
    }()

}
