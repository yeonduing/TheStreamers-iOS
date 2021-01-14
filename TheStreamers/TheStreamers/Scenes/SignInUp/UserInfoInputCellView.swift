//
//  UserInfoInputCellView.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/14.
//

import UIKit

class UserInfoInputCellView: UIView {
    
    private var type: InputType?
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = type?.placeholder()
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.borderStyle = .none
        return textField
    }()
    
    private lazy var button: UIButton? = {
        guard type == InputType.emailForSignUp || type == InputType.code else {
            return nil
        }
        let button = MainButton()
        button.setTitle(type?.buttonTitle(), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.contentEdgeInsets =  UIEdgeInsets(top: 12, left: 14, bottom: 12, right: 14)
        return button
    }()
    
    convenience init(type: InputType) {
        self.init(frame: .zero)
        self.type = type
        configure()
        addSubviews()
    }
    
}

extension UserInfoInputCellView {
    
    private func configure() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.appColor(.gray1)
        self.layer.cornerRadius = 25
        self.layer.masksToBounds = true
        self.heightAnchor.constraint(equalToConstant: 49).isActive = true
    }
    
    private func addSubviews() {
        self.addSubview(textField)
        var constraints = [
            textField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            textField.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor)

        ]
        constraints.append(contentsOf: addSubViewButton())
        NSLayoutConstraint.activate(constraints)
    }
    
    private func addSubViewButton() -> [NSLayoutConstraint] {
        if let button = self.button {
            self.addSubview(button)
            return [
                button.leadingAnchor.constraint(equalTo: textField.safeAreaLayoutGuide.trailingAnchor,
                                                constant: 10),
                button.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,
                                                 constant: -5),
                button.widthAnchor.constraint(equalToConstant: 100),
                button.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,
                                            constant: 5),
                button.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,
                                            constant: -5)
            ]
        } else {
            return [textField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,
                                                    constant: -20)]
        }
    }
    
}

extension UserInfoInputCellView {
    
    enum InputType {
        case emailForSignUp, code
        case email, password, checkPassword, userName
        
        func placeholder() -> String {
            switch self {
            case .emailForSignUp:
                return "Email - has to be unique"
            case .code:
                return "Code"
            case .email:
                return "Email"
            case .password:
                return "Password"
            case .checkPassword:
                return "Check Password "
            case .userName:
                return "Username"
            }
        }
        
        func buttonTitle() -> String {
            switch self {
            case .emailForSignUp:
                return "Send Code"
            case .code:
                return "Check Code"
            default:
                return ""
            }
        }
    }
    
}
