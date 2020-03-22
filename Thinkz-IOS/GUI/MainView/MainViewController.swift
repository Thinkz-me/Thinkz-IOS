//
//  MainViewController.swift
//  Thinkz-IOS
//
//  Created by Mateusz Łukasiński on 22/03/2020.
//  Copyright © 2020 Thinkz.me. All rights reserved.
//

import UIKit

class MainViewController: BasicViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        view = MainView()
    }

}
