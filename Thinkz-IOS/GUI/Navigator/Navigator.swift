//
//  Navigator.swift
//  Thinkz-IOS
//
//  Created by Mateusz Łukasiński on 22/03/2020.
//  Copyright © 2020 Thinkz.me. All rights reserved.
//

import UIKit

class Navigator:NSObject{
    
    private let window:UIWindow
    private var currentViewController: UIViewController? {
        didSet {
            currentViewController?.navigationController?.delegate = self
        }
    }
    private let dependencyContainer:DependencyContainer
    
    init(window:UIWindow, dependencyContainer:DependencyContainer){
        self.window = window
        self.dependencyContainer = dependencyContainer
    }
    
    static func actualViewController(for viewController: UIViewController) -> UIViewController {
        var controller = viewController
        if let navigationController = viewController as? UINavigationController {
            controller = navigationController.viewControllers.first!
            
            return actualViewController(for: controller)
        }
        return controller
    }
    
    func transition(scene:Scenes, type:TransitionTypes){
        
        let vc = scene.returnViewController(navigator: self, dependencyContainer: dependencyContainer)
        if #available(iOS 13.0, *) {
            vc.isModalInPresentation = true
        }
        
        switch type{
            
        case .root:
            currentViewController = Navigator.actualViewController(for: vc)
            window.rootViewController = currentViewController
            
        case .push:
            guard let nc = currentViewController?.navigationController else {fatalError()}
            nc.pushViewController(vc, animated: true)
        }
        
    }
    
}

extension Navigator:UINavigationControllerDelegate{
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        currentViewController = Navigator.actualViewController(for: viewController)
    }
}
