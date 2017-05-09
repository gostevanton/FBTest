//
//  FBTestTests.swift
//  FBTestTests
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import XCTest
@testable import FBTest
import Cuckoo

class FBTestTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCallsGetAuthTokenOfFacebookAfterTapGetTokenButton() {
       
        let presenter = PresenterImpl(view: viewController)
        
        viewController.presenter = presenter
        
        XCTAssertFalse(Facebook.shared.loginWasCalled)
        
        viewController.getTokenButtonTapAction(self)

        XCTAssertTrue(Facebook.shared.loginWasCalled)
        
    }
    
}
