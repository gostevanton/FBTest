//
//  Presenter.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import UIKit

protocol Presenter {
    init(view: View)
    
    func auth()
}
