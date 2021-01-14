//
//  UserInfoInputView.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/14.
//

import UIKit

class UserInfoInputView: UIView {
    
    private var type: InputType?
    lazy var height: CGFloat = {
        guard let type = type else { return 0 }
        switch type {
        case .signIn:
            return UserInfoInputCellView.height * 3 + 21 + 48
        case .signUp:
            return UserInfoInputCellView.height * 6 + 21 * 4 + 48
        }
    }()
    
    private lazy var stackView: UserInfoInputStackView = {
        UserInfoInputStackView(type: type ?? .signIn)
    }()
    
    private lazy var signInButton: MainButton = {
        let button = MainButton()
        button.setTitle(type?.placeholder(), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.heightAnchor.constraint(equalToConstant: UserInfoInputCellView.height).isActive = true
        return button
    }()
    
    convenience init(type: InputType) {
        self.init(frame: .zero)
        self.type = type
        configure()
        addSubviews()
    }
    
}

extension UserInfoInputView {
    
    private func configure() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addSubviews() {
        self.addSubview(stackView)
        self.addSubview(signInButton)
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            signInButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            signInButton.topAnchor.constraint(equalTo: stackView.safeAreaLayoutGuide.bottomAnchor, constant: 48)
        ])
    }
    
}

extension UserInfoInputView {
    
    enum InputType {
        case signIn, signUp
        
        func placeholder() -> String {
            switch self {
            case .signUp:
                return "Sign Up"
            case .signIn:
                return "Sign In"
            }
        }
    }
    
}
