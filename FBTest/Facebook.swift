//
//  Facebook.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import UIKit
import SafariServices

class Facebook {
    
    static let shared = Facebook()

    private init() {
    }
    
    let url = URL(string: "https://www.facebook.com/dialog/oauth?client_id=1211141362338583&client_secret=e891ddb7d10306bd8c2757de21795638&redirect_uri=fbconnect://success&response_type=token")
    
    var viewController : UIViewController?
    
    var svc : SFSafariViewController?
    
    /**
     Get facebook access token by opening a login window.
     
     - parameter callback:      Returns AccessToken as String or an Error.
     */
    public func getAuthToken(callback: @escaping (String?, Error?) -> Void) {
        // TODO(кандидат): определить метод. Функция, которая делает логин:
        login()
    }
    
    
    /**
     Open a login window.
    */
    private func login() {
        svc = SFSafariViewController(url: url!)
        viewController?.present(svc!, animated: true, completion: nil)
    }

}
