//
//  GenderButton.swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import Foundation
import UIKit


public var ButtonIsTapped = false

class GenderButton : UIButton {
    
    var delegate: buttonTappedDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(text: "")
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(text: String) {
        setTitle("\(text)", for: .normal)
        backgroundColor = UIColor(red: 247/255, green: 249/255, blue: 252/255, alpha: 1)
        setTitleColor(.black, for: .normal)
        layer.cornerRadius = 18
        contentHorizontalAlignment = .left
        titleEdgeInsets.left = 16
        layer.borderWidth = 1
        layer.borderColor = CGColor.init(srgbRed: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        addTarget(self, action: #selector(buttonTapped(button:)), for: .touchUpInside)
    }
    
    @objc func buttonTapped(button: UIButton){

        backgroundColor = UIColor(red: 255/255, green: 95/255, blue: 114/255, alpha: 1)
        setTitleColor(.white, for: .normal)
            self.delegate?.pushVC()

    }
}


