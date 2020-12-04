//
//  SSProcessorInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import Foundation

public enum SSProcessorInfo {

    public static let numberProcessors = ProcessInfo.processInfo.processorCount

    public static var numberActiveProcessors: Int {
        return ProcessInfo.processInfo.activeProcessorCount
    }
}
