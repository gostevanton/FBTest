//
//  FacebokTests.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import XCTest
@testable import FBTest
import Cuckoo

class FacebokTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testVariables() {
        
        let url = URL(string: "https://www.facebook.com/dialog/oauth?client_id=1211141362338583&client_secret=e891ddb7d10306bd8c2757de21795638&redirect_uri=fbconnect://success&response_type=token")
        
        XCTAssertEqual(url, Facebook.shared.url)

    }
    
}
