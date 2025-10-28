//
//  Friend.swift
//  Friendz
//
//  Created by Till Gartner on 28.10.25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var id: UUID
    var firstName : String
    var lastName : String
    
    init(id: UUID = UUID(), firstName: String, lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
    }
}
