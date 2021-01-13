//
//  UIColor+Named.swift
//  TheStreamers
//
//  Created by 류연수 on 2021/01/14.
//

import UIKit

extension UIColor {
    
    enum NamedColor {
        case background
        case title
        case gray1
        case gray2
    }
        
    static func appColor(_ name: NamedColor) -> UIColor? {
        switch name {
        case .background:
            return UIColor(named: "Background")
        case .title:
            return UIColor(named: "Title")
        case .gray1:
            return UIColor(named: "Gray1")
        case .gray2:
            return UIColor(named: "Gray2")
        }
    }
    
}
