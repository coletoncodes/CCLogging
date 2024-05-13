//
//  Log.swift
//
//
//  Created by Coleton Gorecke on 9/23/23.
//

import Foundation
import OSLog

/// The global logging function used in this module.
/// Copy this function almost exactly in the host app to simplify
/// logging across the app and avoid importing this package everywhere.
public func log(
    _ message: String,
    _ osLogType: OSLogType = .debug,
    _ category: LogCategory,
    function: String = #function,
    line: Int = #line,
    file: String = #file
) {
    logger.log(message, osLogType, category, function: function, line: line, file: file)
}
