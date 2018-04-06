//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Sebastian Horatiu on 04/04/2018.
//  Copyright © 2018 Sebastian Horatiu. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let width: CGFloat = 45
        let height: CGFloat = 25
        
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.height / 2) - (height / 2), width: width, height: height))
        print("--The height of the frame is \(self.frame.height) so dividing it by 2 we get \(self.frame.height / 2).\nSo our currency label will start from the midle of the CurrencyTextField and go down base on the value we have give to size, which is 20.\nTo center it vertically in this text view, we need to substract half the height of our currency label.")
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8811050082, green: 0.8811050082, blue: 0.8811050082, alpha: 0.8021992723)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        let formatter = NumberFormatter()
        formatter.locale = .current
        formatter.numberStyle = .currency
        
        currencyLbl.text = formatter.currencySymbol
        
        self.addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }

    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.246281036) //white with 25% oppacity; double-click to view details
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = UIColor.white
        }
    }
}
