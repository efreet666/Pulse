//
//  PageLabel.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import Foundation
import UIKit

class PageLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        text = "Health"
        font = UIFont(name: "SF Pro Display", size: 29)
        textColor = UIColor.black
        font = UIFont.boldSystemFont(ofSize: 29)
    }
}
