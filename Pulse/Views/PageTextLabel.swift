//
//  PageTextLabel .swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import Foundation
import UIKit

class PageTextLabel : UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(pageText: "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(pageText: String) {
        font = UIFont(name: "SF Pro Display", size: 24)
        text = pageText
        textColor = UIColor.black
        textAlignment = .center
        font = UIFont.boldSystemFont(ofSize: 24)
    }
}
