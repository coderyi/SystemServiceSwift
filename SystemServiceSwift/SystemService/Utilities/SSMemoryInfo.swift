//
//  SSMemoryInfo.swift
//  SystemServiceSwift
//
//  Created by coderyi on 2020/11/28.
//

import UIKit

public final class SSMemoryInfo {
    
    private static let totalBytes = Double(ProcessInfo.processInfo.physicalMemory)
    
    // MB
    public static var totalMemory: Double = {
        var allMemory = Double(ProcessInfo.processInfo.physicalMemory)
        var totalMemory: Double = 0.00;
        totalMemory = (allMemory / 1024.0) / 1024.0;
        var toNearest: Int = 256;
        var remainder: Int = Int(totalMemory) % toNearest;
        if (remainder >= toNearest / 2) {
            totalMemory = Double((Int(totalMemory) - remainder) + 256);
        } else {
            totalMemory = Double(Int(totalMemory) - remainder);
        }
        if (totalMemory <= 0) {
            return -1;
        }

        return totalMemory;
    }()

}
