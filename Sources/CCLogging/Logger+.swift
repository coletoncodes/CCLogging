//
//  Logger+.swift
//  CCSDK
//
//  Created by Coleton Gorecke on 5/21/23.
//

import Foundation
import OSLog

/// Extends the OSLog Logger into a standardized log message.
extension Logger {
    func log(
        _ message: String,
        _ osLogType: OSLogType = .debug,
        _ category: LogCategory,
        function: String = #function,
        line: Int = #line,
        file: String = #file
    ) {
        let fileInfo = file.components(separatedBy: "/").last ?? "Unparsable file"
        let logInfo = "File: \(fileInfo) | Function: \(function) at line: \(line)"
        let emoji = "[\(osLogType.emoji)] -- \(osLogType.rawDescription) | "
        let logMessage = "\(emoji)\(category.formattedValue) | Message: \(message)"
        let logStr = "\(logMessage) | \(logInfo)"
        
        switch osLogType {
        case .debug:
            self.debug("\(logStr)")
        case .info:
            self.info("\(logStr)")
        case .error:
            self.error("\(logStr)")
        case .fault:
            self.fault("\(logStr)")
        default:
            self.log("\(logStr)")
        }
    }
    
}
