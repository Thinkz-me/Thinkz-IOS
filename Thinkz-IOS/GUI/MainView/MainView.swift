//
//  MainView.swift
//  Thinkz-IOS
//
//  Created by Mateusz Łukasiński on 22/03/2020.
//  Copyright © 2020 Thinkz.me. All rights reserved.
//

import UIKit
import TinyConstraints

class MainView:BasicView{
        
    private let backgroundView:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.clipsToBounds = true
        return view
    }()
    
    private let logoImageView:UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.image = UIImage(named: "Thinkz-Logo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    public let testBtn:UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .blue
        btn.setTitleColor(.white, for: .normal)
        btn.setTitle("Go to coordinates test", for: .normal)
        btn.titleLabel?.textAlignment = .center
        btn.layer.cornerRadius = 5.0
        btn.clipsToBounds = true
        btn.isEnabled = true
        return btn
    }()
    
    override init() {
        super.init()
        
        setView()
    }

    private func setView(){
        addSubview(backgroundView)
        backgroundView.edgesToSuperview()
        
        backgroundView.addSubview(logoImageView)
        logoImageView.topToSuperview(offset: 30.0)
        logoImageView.leftToSuperview(offset: 40.0)
        logoImageView.rightToSuperview(offset: -40.0)
        
        backgroundView.addSubview(testBtn)
        testBtn.topToBottom(of: logoImageView, offset: 40.0)
        testBtn.width(250)
        testBtn.centerXToSuperview()
        
    }
    
}
