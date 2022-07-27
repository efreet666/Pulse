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

protocol continueButtonDelegate {
    func pushVC()
}

class HeightViewController: UIViewController {
    
    private let backButton = BackButton()
    private let pageNumberTitle = PageNumberTitle()
    private let pageTextLabel = PageTextLabel()
    private var segmentControl = UISegmentedControl()
    private var continueButton = ContinueButton()
    
    // MARK: - Custom textField
    private var customTextField = CustomTextField()
    private var customLabelToTextField1 = customLabelToTextField()
    private var customLabelToTextField2 = customLabelToTextField()
    private var customLabelToTextField3 = customLabelToTextField()
    private var unitLabel = UnitLabel()
    
    public var labelTextArray: [String] = []
    
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
        continueButton.delegate = self
        continueButton.alpha = 0
        continueButton.isEnabled = false
        view.addSubview(continueButton)
        
        customTextField.delegate = self
        view.addSubview(customTextField)
        
        customLabelToTextField1.configure(character: "")
        customLabelToTextField2.configure(character: "")
        customLabelToTextField3.configure(character: "")
        
        view.addSubview(customLabelToTextField1)
        view.addSubview(customLabelToTextField2)
        view.addSubview(customLabelToTextField3)
        
        unitLabel.configure(pageText: "cm")
        view.addSubview(unitLabel)
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
        
        customLabelToTextField2.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(137)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(70)
            make.height.equalTo(80)
        }
        
        customLabelToTextField3.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(213)
            make.top.equalToSuperview().inset(266)
            make.width.equalTo(70)
            make.height.equalTo(80)
        }
        
        unitLabel.snp.makeConstraints { make in
            make.width.equalTo(25)
            make.height.equalTo(20)
            make.top.equalToSuperview().inset(330)
            make.leading.equalToSuperview().inset(289)
        }
    }
}

extension HeightViewController: backButtonDelegate {
    func popVC() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

extension HeightViewController: UITextFieldDelegate {
   
    func textFieldDidChangeSelection(_ textField: UITextField) {
        let inputText = textField.text

        if inputText?.count != 4 {
            if inputText?.count == 1 {
                if let character1 = inputText?.character(at: 0) {
                    print(character1)
                    labelTextArray.append(String(character1))
                }
            }
            
            if inputText?.count == 2 {
                if let character2 = inputText?.character(at: 1) {
                    labelTextArray.append(String(character2))
                    
                }
            }
            if inputText?.count == 3 {
                if let character3 = inputText?.character(at: 2) {
                    print(character3)
                    labelTextArray.append(String(character3))
                    
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
            customLabelToTextField3.configure(character: "")
        case 1:
            customLabelToTextField1.configure(character: labelTextArray[0])
        case 2:
            customLabelToTextField1.configure(character: String(labelTextArray[0]))
            customLabelToTextField2.configure(character: String(labelTextArray[1]))
        case 3:
            customLabelToTextField1.configure(character: String(labelTextArray[0]))
            customLabelToTextField2.configure(character: String(labelTextArray[1]))
            customLabelToTextField3.configure(character: String(labelTextArray[2]))
        default:
            customLabelToTextField1.configure(character: "")
            customLabelToTextField2.configure(character: "")
            customLabelToTextField3.configure(character: "")
            
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

extension HeightViewController: continueButtonDelegate {
        func pushVC() {
            let storyB = UIStoryboard(name: "Main", bundle: nil)
                    guard let vc = storyB.instantiateViewController(identifier: "WeightViewController") as? WeightViewController else { return }
                    self.navigationController?.pushViewController(vc, animated: true)
        }

}
