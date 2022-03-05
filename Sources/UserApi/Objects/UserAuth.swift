//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 03. 05..
//

import Foundation
import FeatherApi

public extension User {
    
    struct Auth: FeatherApiModel {
        public typealias Module = User
    }
}

public extension User.Auth {
    
    // MARK: -

    struct Request: Codable {
        public var email: String
        public var password: String
        
        public init(email: String,
                    password: String) {
            self.email = email
            self.password = password
        }
    }
    
    struct Response: Codable {
        let user: FeatherUser
        let account: User.Account.Detail
        let token: User.Token.Detail
    }
}



