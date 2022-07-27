//
//  UnitLabel.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import Foundation
import UIKit

class UnitLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(pageText: "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(pageText: String) {
        font = UIFont(name: "SF Pro Display", size: 17)
        text = pageText
        textColor = UIColor.black
        textAlignment = .center
    }
    
}
