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
        self.axis = .vertical
        self.alignment = .fill
        self.distribution = .fillEqually
        self.spacing = 21
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addSubviews() {
        type?.allCases().forEach {
            let view = UserInfoInputView(type: $0)
            self.addArrangedSubview(view)
        }
    }
    
}

extension UserInfoInputStackView {
    
    enum InputType {
        case signIn, signUp
        
        func allCases() -> [UserInfoInputView.InputType] {
            typealias Type = UserInfoInputView.InputType
            switch self {
            case .signIn:
                return [Type.email, Type.password]
            case .signUp:
                return [Type.emailForSignUp, Type.code, Type.userName, Type.password, Type.checkPassword]
            }
        }
    }
    
}
