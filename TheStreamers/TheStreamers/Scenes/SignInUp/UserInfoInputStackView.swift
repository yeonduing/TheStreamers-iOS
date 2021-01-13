//
//  UserInfoInputStackView.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/14.
//

import UIKit

class UserInfoInputStackView: UIStackView {
    
    private var type: InputType?
    
    convenience init(type: InputType) {
        self.init(frame: .zero)
        self.type = type
        configure()
        addSubviews()
    }
    
}

extension UserInfoInputStackView {
    
    private func configure() {
        
    }
    
    private func addSubviews() {
        
    }
    
}

extension UserInfoInputStackView {
    
    enum InputType {
        case signIn, signUp
    }
    
}
