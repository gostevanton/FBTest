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
    
    static let shared : Facebook = Facebook()

    private init() {
    }
    
    let url : URL? = URL(string: "https://www.facebook.com/dialog/oauth?client_id=1211141362338583&client_secret=e891ddb7d10306bd8c2757de21795638&redirect_uri=fbconnect://success&response_type=token")
    
    var viewController : UIViewController?
    
    var svc : SFSafariViewController?
    
    var callback : ((String?, Error?) -> Void)?
    
    var loginWasCalled : Bool = false
    
    /*! Get facebook access token by opening a login window.
     
      @param callback returns AccessToken as String or an Error.
     */
    public func getAuthToken(callback: @escaping (String?, Error?) -> Void) {
        self.callback = callback

        login()
    }
    
    
    /*! Open a login window.
    */
    private func login() {
        loginWasCalled = true

        svc = SFSafariViewController(url: url!)
        viewController?.present(svc!, animated: true, completion: nil)
    }
    
    /*! Parsing token from url and calling results callback with token or error
     
      @param url for parsing.
     */
    func parsingURL(_ url: URL) {
        
        var query = url.description
        let array = query.components(separatedBy: "#")
        
        if array.count > 1 {
            query = array.last!
        }
        
        let pairs = query.components(separatedBy: "&")
        
        var token : String? = nil
        
        for pair in pairs {
            if pair.contains("access_token=") {
                token = pair.replacingOccurrences(of: "access_token=", with: "")
            }
        }
        
        self.svc?.dismiss(animated: true, completion: nil)
        
        if let token = token {
            self.callback?(token, nil)
        } else {
            let error = NSError(domain:"The token was not received", code:400, userInfo:nil)
            self.callback?(nil, error)
        }
    }

}
