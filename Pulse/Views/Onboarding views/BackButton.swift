//
//  BackButton.swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import Foundation
import UIKit

class BackButton: UIButton {
    
    var delegate: backButtonDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        setImage(UIImage(named: "Union"), for: .normal)
        addTarget(self, action: #selector(buttonTapped(button:)), for: .touchUpInside)
    }
    
    @objc func buttonTapped(button: UIButton){
        print("tap1")
        self.delegate?.popVC()
    }
}
