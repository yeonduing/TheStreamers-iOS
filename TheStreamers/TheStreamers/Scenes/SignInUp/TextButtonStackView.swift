//
//  TextButtonStackView.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/15.
//

import UIKit

class TextButtonStackView: UIStackView {
    
    private let info: String
    private let title: String
    private let size: CGFloat
    
    private lazy var label: UILabel = {
        let infoLabel = UILabel()
        infoLabel.text = info
        infoLabel.font = UIFont.systemFont(ofSize: size)
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        return infoLabel
    }()
    
    private lazy var button: UIButton = {
        TextButton(text: title, size: 18)
    }()
    
    init(description: String, title: String, size: CGFloat = 14) {
        self.info = description
        self.title = title
        self.size = size
        super.init(frame: .zero)
        configure()
        addSubviews()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension TextButtonStackView {
    
    private func configure() {
        self.axis = .horizontal
        self.alignment = .fill
        self.distribution = .fillProportionally
        self.spacing = 8
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addSubviews() {
        self.addArrangedSubview(label)
        self.addArrangedSubview(button)
    }
    
}
