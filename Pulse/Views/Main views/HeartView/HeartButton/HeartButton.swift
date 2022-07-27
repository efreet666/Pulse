//
//  HeartButton.swift
//  Pulse
//
//  Created by Влад Бокин on 27.07.2022.
//

import Foundation
import UIKit

class HeartButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }
    @objc func tapButton() {
        print("tap!")
    }
   
}
