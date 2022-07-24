//
//  ViewController.swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import UIKit
import SnapKit

class GenderViewController: UIViewController {

    private let pageNumberTitle = PageNumberTitle()
    private let chooseGenderLabel = СhooseGenderLabel()
    
    private let maleGenderButton = GenderButton()
    private let femaleGenderButton = GenderButton()
    private let nonBinaryGenderButton = GenderButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setContraint()
        
    }

    private func setupViews() {
        view.addSubview(pageNumberTitle)
        view.addSubview(chooseGenderLabel)
        
        maleGenderButton.configure(text: "Male")
        femaleGenderButton.configure(text: "Female")
        nonBinaryGenderButton.configure(text: "Non-binary")
        
        view.addSubview(maleGenderButton)
        view.addSubview(femaleGenderButton)
        view.addSubview(nonBinaryGenderButton)
    }

}

extension GenderViewController {
    
    private func setContraint() {
        pageNumberTitle.snp.makeConstraints { make in
            make.width.equalTo(72)
            make.height.equalTo(18)
            make.top.equalToSuperview().inset(57)
            make.leading.equalToSuperview().inset(151)
        }
        
        chooseGenderLabel.snp.makeConstraints { make in
            make.width.equalTo(226)
            make.height.equalTo(29)
            make.top.equalToSuperview().inset(113)
            make.leading.trailing.equalToSuperview().inset(74)
        }
        
        maleGenderButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(231)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(68)
        }
        
        femaleGenderButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(311)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(68)
        }
        
        nonBinaryGenderButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(391)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(68)
        }
        
    }
}
