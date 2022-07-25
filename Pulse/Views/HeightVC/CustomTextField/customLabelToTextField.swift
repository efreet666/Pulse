//
//  customLabelToTextField.swift
//  Pulse
//
//  Created by Влад Бокин on 25.07.2022.
//

import Foundation
import UIKit

class customLabelToTextField: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure() {
        
        layer.cornerRadius = 18
        backgroundColor = UIColor(red: 247/255, green: 249/255, blue: 252/255, alpha: 1)
        
        layer.borderWidth = 1
        layer.borderColor = CGColor.init(srgbRed: 230/255, green: 230/255, blue: 230/255, alpha: 1)
    }
    
   
}
