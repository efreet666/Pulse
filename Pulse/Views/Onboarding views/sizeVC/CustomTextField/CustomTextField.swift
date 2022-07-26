//
//  CustomTextField.swift
//  Pulse
//
//  Created by Влад Бокин on 25.07.2022.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        becomeFirstResponder()
        keyboardType = .numberPad
    }
    
}


 
