//
//  TextButton.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/15.
//

import UIKit

class TextButton: UIButton {
    
    convenience init(text: String, size: CGFloat = 14) {
        self.init(frame: .zero)
        configure(text: text, size: size)
    }
    
    private func configure(text: String, size: CGFloat = 14) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(text, for: .normal)
        self.setTitleColor(UIColor.appColor(.title), for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: size)
    }
    
}
