//
//  HealthButton.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import Foundation
import UIKit

class HealthButton: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure(image: UIImage(named: "c1")!, title: "", textColor: UIColor.white)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    
    func configure(image: UIImage, title: String, textColor: UIColor) {
       
        var container2 = AttributeContainer()
        container2.foregroundColor = UIColor.white
        container2.font =  UIFont(name: "HelveticaNeue-Thin", size: 8)
        var configuration = UIButton.Configuration.filled()

        configuration.image = image

        configuration.titleAlignment = .center
        
        configuration.imagePlacement = .top
        configuration.cornerStyle = .dynamic
        configuration.baseForegroundColor = textColor
        configuration.baseBackgroundColor = UIColor.white
        configuration.background.cornerRadius = 16
        configuration.subtitle = title
        
        configuration.imagePadding = 2
        configuration.buttonSize = .mini
        configuration.titlePadding = -10
        let plain = UIButton(configuration: configuration, primaryAction: nil)
        //plain.setTitle(title, for: .normal)
        
        plain.titleLabel!.font =  UIFont(name: "HelveticaNeue-Thin", size: 12)
        
        addSubview(plain)
        
        plain.snp.makeConstraints { make in
            make.top.leading.equalToSuperview()
            make.width.equalTo(111)
            make.height.equalTo(66)
            
        }
        
    }
    
   
}
