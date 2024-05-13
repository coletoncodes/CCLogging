//
//  OSLogDestination.swift
//
//
//  Created by Coleton Gorecke on 12/2/23.
//

import Foundation
import OSLog

/// The OS logging destination to ensure logs are submitted to the OS Log System.
class OSLogDestination: CCLoggerDestination {
    
    private lazy var subsystem: String = {
        Bundle.main.bundleIdentifier ?? "Unknown"
    }()
    
    private lazy var logger: Logger = {
        return Logger(subsystem: subsystem, category: "CCLogger")
    }()
    
    func log(
        _ message: String,
        _ osLogType: OSLogType,
        _ category: LogCategory,
        function: String,
        line: Int,
        file: String
    ) {
        logger.log(message, osLogType, category, function: function, line: line, file: file)
    }
}
