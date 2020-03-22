//
//  BasicViewController.swift
//  Thinkz-IOS
//
//  Created by Mateusz Łukasiński on 22/03/2020.
//  Copyright © 2020 Thinkz.me. All rights reserved.
//

import UIKit

class BasicViewController:UIViewController{
    
    internal let dependencyContainer:DependencyContainer
    internal let navigator:Navigator
    
    init(dependencyContainer:DependencyContainer,navigator:Navigator) {
        self.dependencyContainer = dependencyContainer
        self.navigator = navigator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
