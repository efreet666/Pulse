//
//  ContinueButton.swift
//  Pulse
//
//  Created by Влад Бокин on 25.07.2022.
//

import Foundation
import UIKit

class ContinueButton: UIButton {
    
    var delegate: continueButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(title: "")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(title: String) {
        backgroundColor = UIColor(red: 255/255, green: 95/255, blue: 114/255, alpha: 1)
        setTitleColor(UIColor.white, for: .normal)
        layer.cornerRadius = 18
        setTitle(title, for: .normal)
        addTarget(self, action: #selector(buttonTapped(button:)), for: .touchUpInside)
    }
    
    @objc func buttonTapped(button: UIButton){
        
        self.delegate?.pushVC()
    }
}
