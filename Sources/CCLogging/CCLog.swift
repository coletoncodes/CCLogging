//
//  CCLog.swift
//
//
//  Created by Coleton Gorecke on 12/2/23.
//

import Foundation
import OSLog

/// Represents the data in a "log".
/// Mapped to a ``CoreDataLog``.
struct CCLog {
    let message: String
    let osLogType: OSLogType
    let category: CCLogCategory
    let function: String
    let line: Int
    let file: String
}
