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
        view.addSubview(logoImageView)
        view.addSubview(userInfoInputView)
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                                   constant: 180),
            userInfoInputView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                                                       constant: 20),
            userInfoInputView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                                                        constant: -20),
            userInfoInputView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor,
                                                   constant: 56.8)
        ])
    }
    
}
