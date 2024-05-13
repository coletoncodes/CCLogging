//
//  OSLogType+.swift
//
//
//  Created by Coleton Gorecke on 5/3/24.
//

import Foundation
import OSLog

public extension OSLogType {
    var emoji: String {
        switch self {
        case .debug:
            return "🐛"
        case .info:
            return "ℹ️"
        case .error:
            return "❌"
        case .fault:
            return "💥"
        default:
            return "🤖"
        }
    }
    
    var rawDescription: String {
        switch self {
        case .debug:
            return "Debug"
        case .info:
            return "Info"
        case .error:
            return "Error"
        case .fault:
            return "Fault"
        default:
            return "Default"
        }
    }
}
