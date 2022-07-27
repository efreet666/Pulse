//
//  SkipButton.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import Foundation
import UIKit

class SkipButton: UIButton {
    
    
    //var delegate: continueButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(title: "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(title: String) {
        setTitleColor(UIColor(red: 255/255, green: 95/255, blue: 114/255, alpha: 1), for: .normal)
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont(name: "SF Pro Display", size: 14)
        addTarget(self, action: #selector(buttonTapped(button:)), for: .touchUpInside)
    }
    
    @objc func buttonTapped(button: UIButton){
        
       // self.delegate?.pushVC()
    }
}
