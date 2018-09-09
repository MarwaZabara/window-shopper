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
    override func draw(_ rect: CGRect) {
        let size:CGFloat = 20
        let CurrecyLbl = UILabel(frame: CGRect(x:(frame.size.width/8), y:(frame.size.height/2)-(size/2), width: size, height: size))
        CurrecyLbl.backgroundColor = #colorLiteral(red: 0.8752600551, green: 0.870057404, blue: 0.8792594671, alpha: 0.5)
        CurrecyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        CurrecyLbl.textAlignment = .center
        CurrecyLbl.layer.cornerRadius = 5.0
        CurrecyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        CurrecyLbl.text = formatter.currencySymbol
        addSubview(CurrecyLbl)
    }

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
        clipsToBounds = true
//        if placeholder == nil
//        {
//            placeholder = " "
//        }
        if let p = placeholder{
        let place = NSAttributedString(string: p, attributes: [.foregroundColor:#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }}}


