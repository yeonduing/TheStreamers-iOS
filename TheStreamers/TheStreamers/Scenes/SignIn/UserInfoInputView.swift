//
//  UserInfoInputView.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/14.
//

import UIKit

class UserInfoInputView: UIView {
    
    private var type: InputType?
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = type?.placeholder()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.borderStyle = .none
        return textField
    }()
    
    convenience init(type: InputType) {
        self.init(frame: .zero)
        self.type = type
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.appColor(.gray1)
        addSubviews()
    }
    
    private func addSubviews() {
        self.addSubview(textField)
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            textField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            textField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10),
            textField.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        ])
    }
    
    enum InputType {
        case email
        case code
        case password
        case checkPassword
        case userName
        
        func placeholder() -> String {
            switch self {
            case .email:
                return "Email - has to be unique"
            case .code:
                return "Code"
            case .password:
                return "Password"
            case .checkPassword:
                return "Check Password "
            case .userName:
                return "Username"
            }
        }
    }
}
