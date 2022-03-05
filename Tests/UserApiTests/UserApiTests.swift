//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 01. 03..
//

import XCTest
@testable import UserApi

final class UserApiTests: XCTestCase {

    func testExample() async throws {
        let login = User.Auth.Request(email: "root@feathercms.com", password: "FeatherCMS")
        
        XCTAssertEqual(login.email, "root@feathercms.com")
        XCTAssertEqual(login.password, "FeatherCMS")
    }
}
