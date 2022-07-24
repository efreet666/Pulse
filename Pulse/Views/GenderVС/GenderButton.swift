//
//  GenderButton.swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import Foundation
import UIKit

class GenderButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(text: "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(text: String) {
        setTitle("\(text)", for: .normal)
        backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        setTitleColor(.black, for: .normal)
        setTitleColor(.white, for: .selected)
        layer.cornerRadius = 18
        contentHorizontalAlignment = .left
        
        var config = UIButton.Configuration.filled()
        
        config.contentInsets = .init(top: 20, leading: 20, bottom: 20, trailing: 20)
    }
}
