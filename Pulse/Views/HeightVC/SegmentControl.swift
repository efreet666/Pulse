//
//  SegmentControl.swift
//  Pulse
//
//  Created by Влад Бокин on 25.07.2022.
//

import Foundation
import UIKit

class SegmentControl: UISegmentedControl {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(items2: [])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(items2: [String]) {
        let items = ["Purple", "Green", "Blue"]
        UISegmentedControl(items: items)
        selectedSegmentIndex = 0
        addTarget(self, action: #selector(buttonTapped(button:)), for: .touchUpInside)
    }
    
    @objc func buttonTapped(button: UIButton){

    }
}
