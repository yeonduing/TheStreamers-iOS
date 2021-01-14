//
//  UserInfoInputStackView.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/14.
//

import UIKit

class UserInfoInputStackView: UIStackView {
    
    private var type: ViewType?
    
    convenience init(type: ViewType) {
        self.init()
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
        allCases().forEach {
            let view = UserInfoInputCellView(type: $0)
            self.addArrangedSubview(view)
        }
    }
    
}

extension UserInfoInputStackView {
    
    typealias InputType = UserInfoInputCellView.InputType
    typealias ViewType = UserInfoInputView.InputType
    
    private func allCases() -> [InputType] {
        guard let type = type else { return [] }
        switch type {
        case .signIn:
            return [InputType.email, InputType.password]
        case .signUp:
            return [InputType.emailForSignUp, InputType.code,
                    InputType.userName, InputType.password, InputType.checkPassword]
        }
    }
    
}
