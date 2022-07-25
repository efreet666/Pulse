//
//  CustomTextField.swift
//  Pulse
//
//  Created by Влад Бокин on 25.07.2022.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
      
        textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        addTarget(self, action: #selector(characterAdded(textField:)), for: .editingChanged)
    }
    
    @objc func characterAdded(textField: UITextField){
        let inputText = textField.text
        
        if inputText?.count == 1 {
            if let character1 = inputText?.character(at: 0) {
                print(character1)
            }
        }
        
        if inputText?.count == 2 {
            if let character2 = inputText?.character(at: 1) {
                print(character2)
            }
        }
        if inputText?.count == 3 {
            if let character3 = inputText?.character(at: 2) {
                print(character3)
            }
        }
    }
}

extension String {
 
    func index(at position: Int, from start: Index? = nil) -> Index? {
        let startingIndex = start ?? startIndex
        return index(startingIndex, offsetBy: position, limitedBy: endIndex)
    }
 
    func character(at position: Int) -> Character? {
        guard position >= 0, let indexPosition = index(at: position) else {
            return nil
        }
        return self[indexPosition]
    }
}
 
