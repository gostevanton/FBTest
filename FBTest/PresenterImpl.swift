//
//  PresenterImpl.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import UIKit

class PresenterImpl: Presenter {
    
    let view : View
    
    // MARK: -  Presenter Protocol
    required init(view: View) {
        self.view = view
    }
    
    func auth() {
        Facebook.shared.viewController = view.getViewController()
        
        Facebook.shared.getAuthToken { (token, error) in
            if let token = token {
                self.view.printResult("Token - \(token)")
            } else {
                self.view.printResult((error?.localizedDescription)!)
            }
        }
    }

}
