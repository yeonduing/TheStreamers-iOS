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
        let view = UserInfoInputView(frame: .zero)
        self.view.backgroundColor = UIColor.appColor(.background)
        self.view.addSubview(view)
        let constraints = [
            view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            view.heightAnchor.constraint(equalToConstant: 49)
        ]
        NSLayoutConstraint.activate(constraints)
    }

}
