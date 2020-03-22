//
//  Scenes.swift
//  Thinkz-IOS
//
//  Created by Mateusz Łukasiński on 22/03/2020.
//  Copyright © 2020 Thinkz.me. All rights reserved.
//

import UIKit

enum Scenes{
    case MainView
}

extension Scenes{
    
    func returnViewController(navigator:Navigator, dependencyContainer:DependencyContainer)->UIViewController{
        switch self{
            
        case .MainView:
            let viewController = MainViewController(dependencyContainer: dependencyContainer, navigator: navigator)
            let navigationController = UINavigationController(rootViewController: viewController)
            navigationController.isNavigationBarHidden = true
            return viewController
            
        }

    }
}
