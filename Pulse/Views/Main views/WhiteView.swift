//
//  whiteView.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import Foundation
import UIKit

class WhiteView: UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        layer.cornerRadius = 23
        backgroundColor = UIColor(red: 247/255, green: 249/255, blue: 252/255, alpha: 1)
        
    }
}
