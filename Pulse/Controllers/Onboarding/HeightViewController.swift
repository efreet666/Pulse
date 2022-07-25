//
//  HeightViewController.swift
//  Pulse
//
//  Created by Влад Бокин on 24.07.2022.
//

import UIKit

protocol backButtonDelegate {
    func popVC()
}
class HeightViewController: UIViewController {

    private let backButton = BackButton()
    private let pageNumberTitle = PageNumberTitle()
    private let pageTextLabel = PageTextLabel()
    private var segmentControl = UISegmentedControl()
    private var continueButton = ContinueButton()
    
    private var customTextField = CustomTextField()
    
    private var customLabelToTextField1 = customLabelToTextField()
    private var customLabelToTextField2 = customLabelToTextField()
    private var customLabelToTextField3 = customLabelToTextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        self.navigationController?.isNavigationBarHidden = true
        setupViews()
        setContraint()
    }
    
    private func setupViews() {
        pageNumberTitle.configure(numberOfSteps: "Step 3 of 9")
        view.addSubview(pageNumberTitle)
        
        pageTextLabel.text = "What's your height?"
        view.addSubview(pageTextLabel)
        
        backButton.delegate = self
        view.addSubview(backButton)
        
        let items = ["см", "ft"]
        segmentControl = UISegmentedControl(items: items)
        segmentControl.selectedSegmentIndex = 0
        segmentControl.setWidth(73, forSegmentAt: 0)
        segmentControl.setWidth(73, forSegmentAt: 1)
        view.addSubview(segmentControl)
        
        continueButton.configure(title: "CONTINUE")
        view.addSubview(continueButton)
        
        view.addSubview(customTextField)
        
        view.addSubview(customLabelToTextField1)
        view.addSubview(customLabelToTextField2)
        view.addSubview(customLabelToTextField3)
    }

  

}

extension HeightViewController {
    
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
        
        customTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(61)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(70)
            make.height.equalTo(80)
        }
        
        //MARK: - customLabelToTextFields
        customLabelToTextField1.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(61)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(70)
            make.height.equalTo(80)
        }
        
        customLabelToTextField1.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(158)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(70)
            make.height.equalTo(80)
        }
        
        customLabelToTextField1.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(213)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(70)
            make.height.equalTo(80)
        }
        
    }
}

extension HeightViewController: backButtonDelegate {
    func popVC() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
