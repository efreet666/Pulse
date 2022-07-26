//
//  WeightViewController.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import UIKit


class WeightViewController: UIViewController {

    private let backButton = BackButton()
    private let pageNumberTitle = PageNumberTitle()
    private let pageTextLabel = PageTextLabel()
    private var segmentControl = UISegmentedControl()
    private var continueButton = ContinueButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        setupViews()
        setContraint()
    }
    
    private func setupViews() {
        pageNumberTitle.configure(numberOfSteps: "Step 4 of 9")
        view.addSubview(pageNumberTitle)
        
        pageTextLabel.text = "What's your weight?"
        view.addSubview(pageTextLabel)
        
        backButton.delegate = self
        view.addSubview(backButton)
        
        let items = ["kg", "lb"]
        segmentControl = UISegmentedControl(items: items)
        segmentControl.selectedSegmentIndex = 0
        segmentControl.setWidth(73, forSegmentAt: 0)
        segmentControl.setWidth(73, forSegmentAt: 1)
        view.addSubview(segmentControl)
        
        continueButton.configure(title: "CONTINUE")
        continueButton.delegate = self
        view.addSubview(continueButton)
        
    }
   
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
        
        backButton.snp.makeConstraints { make in
            make.width.equalTo(15)
            make.height.equalTo(15)
            make.top.equalToSuperview().inset(60)
            make.leading.equalToSuperview().inset(20)
        }
        
        
        segmentControl.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(184)
            make.leading.equalToSuperview().inset(116)
            make.width.equalTo(146)
            make.height.equalTo(48)
        }
        
        continueButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(52)
            make.top.equalToSuperview().inset(453)
        }
    }

}

extension WeightViewController: backButtonDelegate {
    func popVC() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension WeightViewController: continueButtonDelegate {
        func pushVC() {
            let storyB = UIStoryboard(name: "Main", bundle: nil)
                    guard let vc = storyB.instantiateViewController(identifier: "WeightViewController") as? WeightViewController else { return }
                    self.navigationController?.pushViewController(vc, animated: true)
        }

}
