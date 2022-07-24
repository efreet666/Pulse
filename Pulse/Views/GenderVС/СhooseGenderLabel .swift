//
//  СhooseGenderLabel .swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import Foundation
import UIKit

class СhooseGenderLabel : UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        font = UIFont(name: "SF Pro Display", size: 24)
        text = "What’s your gender?"
        textColor = UIColor.black
        adjustsFontSizeToFitWidth = true
    

    }
}
