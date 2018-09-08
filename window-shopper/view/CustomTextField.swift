//
//  CustomTextField.swift
//  window-shopper
//
//  Created by Marwa Zabara on 9/6/18.
//  Copyright © 2018 Marwa Zabara. All rights reserved.
//

import UIKit
@IBDesignable
class CustomTextField: UITextField {
    override func prepareForInterfaceBuilder() {
        CustomizeTextField()
    }
    
    
        override func awakeFromNib() {
            super .awakeFromNib()
            CustomizeTextField()
           
    }

    func CustomizeTextField() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10
        textAlignment = .center
//        if placeholder == nil
//        {
//            placeholder = " "
//        }
        if let p = placeholder{
        let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }}}


