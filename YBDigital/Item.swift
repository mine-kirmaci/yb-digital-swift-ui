//
//  Item.swift
//  YBDigital
//
//  Created by Mine Kırmacı on 29.09.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
