//
//  ButtonSubLabel.swift
//  Pulse
//
//  Created by Влад Бокин on 27.07.2022.
//

import Foundation
import UIKit

class ButtonSubLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        text = "Tap to start measure"
        textAlignment = .center
        font = UIFont(name: "SF Pro Display", size: 13)
        textColor = UIColor.white
        font = UIFont.systemFont(ofSize: 15)
    }
}
