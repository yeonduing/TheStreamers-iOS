//
//  ViewController.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UserInfoInputStackView(type: .signIn)
        self.view.backgroundColor = UIColor.appColor(.background)
        self.view.addSubview(view)
        let constraints = [
            view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20)
        ]
        NSLayoutConstraint.activate(constraints)
    }

}
