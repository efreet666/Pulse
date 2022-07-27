//
//  HeartView.swift
//  Pulse
//
//  Created by Влад Бокин on 27.07.2022.
//

import Foundation
import UIKit

class HeartView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let heartImage = UIImageView()
    let heartSubImage = UIImageView()
    let heartSetImage2 = UIImageView()
    let imageCircle = UIImageView()
    let elipse = CustomElipseView()
    let loadElpise = LoadElipse()
    let heartButton = HeartButton()
    let buttonLabel = ButtonLabel()
    
    
    func configure() {
        
        heartSetImage2.image = UIImage(named: "image 1")
        addSubview(heartSetImage2)
        heartSetImage2.snp.makeConstraints { make in
            make.trailing.leading.bottom.top.equalToSuperview().inset(56)
        }
        
        heartSubImage.image = UIImage(named: "Ellipse 3")
        addSubview(heartSubImage)
        heartSubImage.snp.makeConstraints { make in
            make.trailing.leading.bottom.top.equalToSuperview().inset(46)
        }
        
        heartImage.image = UIImage(named: "heart.fill")
        addSubview(heartImage)
        heartImage.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(80)
            make.top.equalToSuperview().inset(104)
            make.bottom.equalToSuperview().inset(74)
        }
        
        addSubview(imageCircle)
        imageCircle.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(80)
            make.top.equalToSuperview().inset(104)
            make.bottom.equalToSuperview().inset(74)
        }
        
        addSubview(elipse)
        elipse.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(0)
            make.bottom.equalToSuperview().inset(0)
        }
        
        addSubview(loadElpise)
        loadElpise.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(32)
            make.top.equalToSuperview().inset(32)
            make.bottom.equalToSuperview().inset(32)
        }

        addSubview(heartButton)
        heartButton.snp.makeConstraints { make in
            make.trailing.leading.bottom.equalToSuperview().inset(80)
            make.top.equalToSuperview().inset(104)
        }
        
        addSubview(buttonLabel)
        buttonLabel.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(139)
            make.top.equalToSuperview().inset(173)
            make.bottom.equalToSuperview().inset(167)
            make.height.equalTo(20)
            //make.width.equalTo(80)
        }
        
    }
  
        
}
