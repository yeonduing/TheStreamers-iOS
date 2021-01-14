//
//  SignUpViewController.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/15.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var userInfoInputView: UserInfoInputView = {
        UserInfoInputView(type: .signUp)
    }()
    
    private lazy var infoButton: TextButtonStackView = {
        TextButtonStackView(description: "Already have account?", title: "Sign In")
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        configure()
        addSubviews()
    }

}

extension SignUpViewController {
    
    private func configure() {
        view.backgroundColor = UIColor.appColor(.background)
    }
    
    private func addSubviews() {
        view.addSubview(logoImageView)
        view.addSubview(userInfoInputView)
        view.addSubview(infoButton)
        
        NSLayoutConstraint.activate([
            logoImageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            
            userInfoInputView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                                                       constant: 20),
            userInfoInputView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                                                        constant: -20),
            userInfoInputView.heightAnchor.constraint(equalToConstant: userInfoInputView.height),
            userInfoInputView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            infoButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -52),
            infoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
