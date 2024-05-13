//
//  CCLogCategory.swift
//
//
//  Created by Coleton Gorecke on 9/23/23.
//

import Foundation
import SwiftUI

/// A LogCategory to give further information to log messages in the console.
public protocol LogCategory {
    /// The value to log to the console.
    var formattedValue: String { get }
}

/// Predefined ``LogCategory`` object for log messages.
public enum CCLogCategory: String, LogCategory {
    case `default`
    case `extension`
    case persistence
    case networking
    case interactor
    case viewModel
    case consumer
    case view
    case lifecycle
    case datasource
    
    /// The case value represented as [CASEVALUE].
    public var formattedValue: String {
        return "[\(self.rawValue.uppercased())]"
    }
}
