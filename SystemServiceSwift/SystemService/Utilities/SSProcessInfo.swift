//
//  SSProcessInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/12/4.
//
import Foundation

public enum SSProcessInfo {

    public static var processID: Int {
        let pid = getpid()
        if pid < 0 {
            return -1
        }
        return Int(pid)
    }
}

