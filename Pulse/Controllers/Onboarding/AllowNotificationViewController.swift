//
//  AllowNotificationVC.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import Foundation
import UIKit

class AllowNotificationViewController: UIViewController {
    
    private let backButton = BackButton()
    private let pageNumberTitle = PageNumberTitle()
    private var continueButton = ContinueButton()
    private var skipButton = SkipButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        setupViews()
        setContraint()
    }
    
    private func setupViews() {
        pageNumberTitle.configure(numberOfSteps: "Step 8 of 9")
        view.addSubview(pageNumberTitle)
        
        backButton.delegate = self
        view.addSubview(backButton)
        
        
        continueButton.configure(title: "ALLOW NOTIFICATION")
        continueButton.delegate = self
        view.addSubview(continueButton)
        
        skipButton.configure(title: "Skip")
        view.addSubview(skipButton)
        
    }
   
    private func setContraint() {
        pageNumberTitle.snp.makeConstraints { make in
            make.width.equalTo(72)
            make.height.equalTo(18)
            make.top.equalToSuperview().inset(57)
            make.leading.equalToSuperview().inset(151)
        }
        
        backButton.snp.makeConstraints { make in
            make.width.equalTo(15)
            make.height.equalTo(15)
            make.top.equalToSuperview().inset(60)
            make.leading.equalToSuperview().inset(20)
        }
        
        continueButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(52)
            make.top.equalToSuperview().inset(726)
        }
        
        skipButton.snp.makeConstraints { make in
            make.width.equalTo(35)
            make.height.equalTo(18)
            make.top.equalToSuperview().inset(57)
            make.leading.equalToSuperview().inset(328)
        }
        
    }

}

extension AllowNotificationViewController: backButtonDelegate {
    func popVC() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension AllowNotificationViewController: continueButtonDelegate {
        func pushVC() {
            let storyB = UIStoryboard(name: "Main", bundle: nil)
                    guard let vc = storyB.instantiateViewController(identifier: "TabBarViewController") as? TabBarViewController else { return }
                    self.navigationController?.pushViewController(vc, animated: true)
        }

}
