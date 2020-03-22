//
//  MainViewController.swift
//  Thinkz-IOS
//
//  Created by Mateusz Łukasiński on 22/03/2020.
//  Copyright © 2020 Thinkz.me. All rights reserved.
//

import UIKit

class MainViewController: BasicViewController {
    
    let rootView = MainView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initializeGestures()
    }
    
    override func loadView() {
        view = rootView
    }

}

//MARK: - Event Handlers
extension MainViewController{
    
    func initializeGestures(){
        rootView.testBtn.addTapGesture(target: self, action: #selector(testButtonTapped))
    }
    
    @objc func testButtonTapped(){
        
    }
}
