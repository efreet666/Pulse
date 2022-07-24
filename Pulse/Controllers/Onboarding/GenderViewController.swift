//
//  ViewController.swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import UIKit
import SnapKit

protocol buttonTappedDelegate {
    func pushVC()
}

class GenderViewController: UIViewController {

    private let pageNumberTitle = PageNumberTitle()
    private let pageTextLabel = PageTextLabel()
    
    private let maleGenderButton = GenderButton()
    private let femaleGenderButton = GenderButton()
    private let nonBinaryGenderButton = GenderButton()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupViews()
        setContraint()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setContraint()
    }

    private func setupViews() {
        pageNumberTitle.configure(numberOfSteps: "Step 1 of 9")
        pageTextLabel.text = "What’s your gender?"
        view.addSubview(pageNumberTitle)
        view.addSubview(pageTextLabel)
        
        maleGenderButton.configure(text: "Male")
        femaleGenderButton.configure(text: "Female")
        nonBinaryGenderButton.configure(text: "Non-binary")
        
        maleGenderButton.delegate = self
        femaleGenderButton.delegate = self
        nonBinaryGenderButton.delegate = self
        
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
        
        pageTextLabel.snp.makeConstraints { make in
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

extension GenderViewController: buttonTappedDelegate {
    func pushVC() {
        let storyB = UIStoryboard(name: "Main", bundle: nil)
                guard let vc = storyB.instantiateViewController(identifier: "HeightViewController") as? HeightViewController else { return }
                self.navigationController?.pushViewController(vc, animated: true)
    }
}
