//
//  ViewController.swift
//  FBTest
//
//  Created by Антон Гостев on 09.05.17.
//  Copyright © 2017 Антон Гостев. All rights reserved.
//

import UIKit

class ViewController: UIViewController, View {
    
    var presenter : PresenterImpl!

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = PresenterImpl(view: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    // MARK: -  Actions
    @IBAction func getTokenButtonTapAction(_ sender: Any) {
        presenter.auth()
    }

}

