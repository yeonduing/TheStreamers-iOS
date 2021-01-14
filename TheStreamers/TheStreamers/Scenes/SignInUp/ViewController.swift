//
//  ViewController.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/13.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = {
        UIImageView(image: UIImage(named: "logo-large"))
    }()
    
    private lazy var userInfoInputView: UserInfoInputView = {
        UserInfoInputView(type: .signUp)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        addSubviews()
    }

}

extension ViewController {
    
    private func configure() {
        view.backgroundColor = UIColor.appColor(.background)
    }
    
    private func addSubviews() {
        view.addSubview(userInfoInputView)
        NSLayoutConstraint.activate([
            userInfoInputView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                                                       constant: 20),
            userInfoInputView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                                                        constant: -20),
            userInfoInputView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                                   constant: 20)
        ])
    }
    
}
