//
//  ButtonLabel.swift
//  Pulse
//
//  Created by Влад Бокин on 27.07.2022.
//

import Foundation
import UIKit

class ButtonLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        text = "MEASURE"
        textAlignment = .center
        font = UIFont(name: "SF Pro Display", size: 17)
        textColor = UIColor.white
        font = UIFont.boldSystemFont(ofSize: 17)
    }
}
