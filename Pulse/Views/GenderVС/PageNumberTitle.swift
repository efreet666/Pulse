//
//  PageNumberTitle.swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import Foundation
import UIKit

class PageNumberTitle: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        font = UIFont(name: "SF Pro Display", size: 15)
        text = "Step 1 of 9"
        textColor = UIColor.black
        adjustsFontSizeToFitWidth = true
        func setColoredLabel() {
            let string = NSMutableAttributedString(string: "Step 1 of 9")
            string.setColorForText("Step 1", with: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
            string.setColorForText("of 9", with: #colorLiteral(red: 70/255, green: 72/255, blue: 76/255, alpha: 1))
            attributedText = string
        }
        setColoredLabel()
    }
}

extension NSMutableAttributedString{
    func setColorForText(_ textToFind: String, with color: UIColor) {
        let range = self.mutableString.range(of: textToFind, options: .caseInsensitive)
        if range.location != NSNotFound {
            addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        }
    }
}
