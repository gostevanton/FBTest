//
//  Presenter.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import UIKit

protocol Presenter {

    /*! @abstract Returns a presenter with connected view.
     @param view the initial View.
     */
    init(view: View)
    
    /*! @abstract Called the user taps the get token action button.
     */
    func auth()
}
