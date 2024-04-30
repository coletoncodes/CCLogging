//
//  CCLog.swift
//
//
//  Created by Coleton Gorecke on 12/2/23.
//

import Foundation
import OSLog

/// Represents the data in a "log".
public struct CCLog {
    public let message: String
    public let osLogType: OSLogType
    public let category: CCLogCategory
    public let function: String
    public let line: Int
    public let file: String
    
    public init(
        message: String,
        osLogType: OSLogType,
        category: CCLogCategory,
        function: String,
        line: Int,
        file: String
    ) {
        self.message = message
        self.osLogType = osLogType
        self.category = category
        self.function = function
        self.line = line
        self.file = file
    }
}
