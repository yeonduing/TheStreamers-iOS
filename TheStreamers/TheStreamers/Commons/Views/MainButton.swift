//
//  MainButton.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/14.
//

import UIKit

class MainButton: UIButton {
    
    convenience init() {
        self.init(frame: .zero)
        configure()
    }
    
    private func configure() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.appColor(.main)
        self.titleLabel?.textColor = UIColor.white
        self.titleLabel?.numberOfLines = 1
        self.titleLabel?.lineBreakMode = .byClipping
    }
    
}
