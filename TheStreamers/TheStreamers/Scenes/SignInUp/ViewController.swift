//
//  ViewController.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/13.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "largeLogo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var userInfoInputView: UserInfoInputView = {
        UserInfoInputView(type: .signIn)
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot Password?", for: .normal)
        button.setTitleColor(UIColor.appColor(.title), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
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

extension ViewController {
    
    private func configure() {
        view.backgroundColor = UIColor.appColor(.background)
    }
    
    private func addSubviews() {
        view.addSubview(logoImageView)
        view.addSubview(userInfoInputView)
        view.addSubview(forgotPasswordButton)
        
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            userInfoInputView.topAnchor.constraint(equalTo: logoImageView.safeAreaLayoutGuide.bottomAnchor,
                                                  constant: 56.8),
            userInfoInputView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                                                       constant: 20),
            userInfoInputView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                                                        constant: -20),
            userInfoInputView.heightAnchor.constraint(equalToConstant: userInfoInputView.height),
            userInfoInputView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: userInfoInputView.safeAreaLayoutGuide.bottomAnchor,
                                                      constant: 16),
            forgotPasswordButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
