//
//  CCLoggerDestination.swift
//
//
//  Created by Coleton Gorecke on 12/2/23.
//

import Foundation
import OSLog

public protocol CCLoggerDestination {
    func log(
        _ message: String,
        _ osLogType: OSLogType,
        _ category: CCLogCategory,
        function: String,
        line: Int,
        file: String
    )
}
