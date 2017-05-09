//
//  Facebook.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import UIKit

class Facebook {
    
    static let shared = Facebook()

    private init() {
    }
    
    /**
     Get facebook access token by opening a login window.
     
     - parameter callback:      Returns AccessToken as String or an Error.
     */
    public func getAuthToken(callback: @escaping (String?, Error?) -> Void) {
        // TODO(кандидат): определить метод. Функция, которая делает логин:
        // LoginManager().logIn([.publicProfile, .email], viewController: someViewController, someCallback)
    }

}
