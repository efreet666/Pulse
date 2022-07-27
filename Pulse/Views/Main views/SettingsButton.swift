//
//  SettingsButton.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import Foundation
import UIKit

class SettingsButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        setImage(UIImage(named: "gearshape.fill"), for: .normal)
    }
    
   
}
