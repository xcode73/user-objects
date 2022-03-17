//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 01. 20..
//

import Foundation
import FeatherObjects

public extension User {
    
    struct RolePermission: FeatherObjectModel {
        public typealias Module = User
    }
}

public extension User.RolePermission {

    struct Create: Codable {
        public var key: String
        public var permissionKeys: [String]
        
        public init(key: String, permissionKeys: [String]) {
            self.key = key
            self.permissionKeys = permissionKeys
        }
    }
}
