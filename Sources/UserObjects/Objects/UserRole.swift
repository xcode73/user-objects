//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 06..
//

import Foundation
import FeatherObjects

public extension User {
    
    struct Role: FeatherObjectModel {
        public typealias Module = User
        
        public struct Keys {
            public static let Guest = "guest"
            public static let Authenticated = "authenticated"
            public static let Root = "root"
        }
    }
}

public extension User.Role {
    
    // MARK: -
    
    struct List: Codable {
        public var id: UUID
        public var key: String
        public var name: String
        
        public init(id: UUID,
                    key: String,
                    name: String) {
            self.id = id
            self.key = key
            self.name = name
        }
    }
    
    // MARK: -
    
    struct Detail: Codable {
        public var id: UUID
        public var key: String
        public var name: String
        public var notes: String?
        
        public init(id: UUID,
                    key: String,
                    name: String,
                    notes: String? = nil) {
            self.id = id
            self.key = key
            self.name = name
            self.notes = notes
        }
    }
    
    // MARK: -
    
    struct Create: Codable {
        public var key: String
        public var name: String
        public var notes: String?
        
        public init(key: String,
                    name: String,
                    notes: String? = nil) {
            self.key = key
            self.name = name
            self.notes = notes
        }
    }
    
    // MARK: -
    
    struct Update: Codable {
        public var key: String
        public var name: String
        public var notes: String?
        
        public init(key: String,
                    name: String,
                    notes: String? = nil) {
            self.key = key
            self.name = name
            self.notes = notes
        }
    }
    
    // MARK: -
    
    struct Patch: Codable {
        public var key: String?
        public var name: String?
        public var notes: String?
        
        public init(key: String? = nil,
                    name: String? = nil,
                    notes: String? = nil) {
            self.key = key
            self.name = name
            self.notes = notes
        }
    }
}

