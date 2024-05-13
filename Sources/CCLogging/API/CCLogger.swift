//
//  CCLogger.swift
//
//
//  Created by Coleton Gorecke on 9/23/23.
//

import Foundation
import OSLog

public let logger: CCLogger = CCLogger()

public final class CCLogger {
    
    var destinations: [CCLoggerDestination] = [OSLogDestination()]
    
    public func add(_ newDestination: CCLoggerDestination) {
        for existingDestination in destinations {
            if type(of: existingDestination) == type(of: newDestination) {
                // this type already exists
                return
            }
        }
        destinations.append(newDestination)
    }
    
    // MARK: - Interface
    public func log(
        _ message: String,
        _ osLogType: OSLogType = .debug,
        _ category: LogCategory,
        function: String,
        line: Int,
        file: String
    ) {
        for destination in destinations {
            destination.log(message, osLogType, category, function: function, line: line, file: file)
        }
    }
}
