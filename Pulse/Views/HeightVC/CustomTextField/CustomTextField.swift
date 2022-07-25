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
      

        addTarget(self, action: #selector(buttonTapped(button:)), for: .editingChanged)
    }
    
    @objc func buttonTapped(button: UIButton){
        
    }
}
