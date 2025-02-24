//
//  Item.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 1/29/25.
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
