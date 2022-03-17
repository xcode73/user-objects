//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 03. 05..
//

import Foundation
import FeatherObjects

public extension User {
    
    struct Auth: FeatherObjectModel {
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
        public let user: FeatherUser
        public let account: User.Account.Detail
        public let token: User.Token.Detail
        
        public init(user: FeatherUser, account: User.Account.Detail, token: User.Token.Detail) {
            self.user = user
            self.account = account
            self.token = token
        }
    }

    struct ResetPasswordRequest: Codable {
        public let email: String
        
        public init(email: String) {
            self.email = email
        }
    }
    
    struct NewPasswordRequest: Codable {
        public let token: String
        public let password: String

        public init(token: String, password: String) {
            self.token = token
            self.password = password
        }
    }
}



