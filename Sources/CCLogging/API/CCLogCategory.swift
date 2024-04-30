//
//  CCLogCategory.swift
//
//
//  Created by Coleton Gorecke on 9/23/23.
//

import Foundation
import SwiftUI

/// The additional Log Category to include in log messages.
public enum CCLogCategory: String {
    case `default` = "[Default]"
    case persistence = "[Persistence]"
    case networking = "[Networking]"
    case interactor = "[Interactor]"
    case viewModel = "[ViewModel]"
    case ext = "[Extension]"
    case consumer = "[Consumer]"
    case view = "[View]"
}
