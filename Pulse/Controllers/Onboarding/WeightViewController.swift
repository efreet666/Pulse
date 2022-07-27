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
    
    private var customTextField = CustomTextField()
    private var customLabelToTextField1 = customLabelToTextField()
    private var customLabelToTextField2 = customLabelToTextField()
    
    private var unitLabel = UnitLabel()
    
    public var labelTextArray: [String] = []
    
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
        continueButton.alpha = 0
        continueButton.delegate = self
        view.addSubview(continueButton)
        
        customTextField.delegate = self
        customTextField.alpha = 0
        view.addSubview(customTextField)
        
        customLabelToTextField1.configure(character: "")
        customLabelToTextField2.configure(character: "")
        
        view.addSubview(customLabelToTextField1)
        view.addSubview(customLabelToTextField2)
        
        unitLabel.configure(pageText: "kg")
        view.addSubview(unitLabel)
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
        
        customTextField.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(101)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(170)
            make.height.equalTo(80)
        }
        
        //MARK: - customLabelToTextFields
        
        customLabelToTextField1.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(101)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(70)
            make.height.equalTo(80)
        }
        
        customLabelToTextField2.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(177)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(70)
            make.height.equalTo(80)
        }
        
        unitLabel.snp.makeConstraints { make in
            make.width.equalTo(25)
            make.height.equalTo(20)
            make.top.equalToSuperview().inset(330)
            make.leading.equalToSuperview().inset(255)
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
                    guard let vc = storyB.instantiateViewController(identifier: "AllowNotificationViewController") as? AllowNotificationViewController else { return }
                    self.navigationController?.pushViewController(vc, animated: true)
        }

}

extension WeightViewController: UITextFieldDelegate {
   
    func textFieldDidChangeSelection(_ textField: UITextField) {
        let inputText = textField.text

        if inputText?.count != 3 {
            if inputText?.count == 1 {
                if let character1 = inputText?.character(at: 0) {
                    print(character1)
                    labelTextArray.append(String(character1))
                }
            }
            
            if inputText?.count == 2 {
                if let character2 = inputText?.character(at: 1) {
                    labelTextArray.append(String(character2))
                    continueButton.isEnabled = true
                    self.continueButton.alpha = 1
                }
            }
            
            
        } else {
            labelTextArray = []
            textField.text = ""
                self.continueButton.alpha = 0
                self.continueButton.isEnabled = false
            
        }
        
        switch labelTextArray.count {
        case 0:
            customLabelToTextField1.configure(character: "")
            customLabelToTextField2.configure(character: "")
        case 1:
            customLabelToTextField1.configure(character: labelTextArray[0])
        case 2:
            customLabelToTextField1.configure(character: String(labelTextArray[0]))
            customLabelToTextField2.configure(character: String(labelTextArray[1]))
        default:
            customLabelToTextField1.configure(character: "")
            customLabelToTextField2.configure(character: "")
           
        }
    }
}
