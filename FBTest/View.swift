//
//  View.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import UIKit

protocol View {
    
    /*! @abstract Called when connected presenter need viewController.
     @result Returns UIViewController.
     */
    func getViewController()->UIViewController
    
    /*! @abstract Called when the view controller is about to show UIActivityViewController after the user taps the action button.
     @param result the String for printing.
     */
    func printResult(_ result: String)
}
