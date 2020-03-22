//
//  UIButtonExtension.swift
//  Thinkz-IOS
//
//  Created by Mateusz Łukasiński on 22/03/2020.
//  Copyright © 2020 Thinkz.me. All rights reserved.
//

import UIKit

extension UIButton{
    
    func addTapGesture(target:Any?,action:Selector){
        let tap = UITapGestureRecognizer(target: target, action: action)
        self.addGestureRecognizer(tap)
    }
    
}
