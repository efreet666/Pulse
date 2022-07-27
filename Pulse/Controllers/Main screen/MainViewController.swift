//
//  MainViewController.swift
//  Pulse
//
//  Created by Влад Бокин on 26.07.2022.
//

import UIKit

class MainViewController: UIViewController {

    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let pageLabel = PageLabel()
    private let settingsButton = SettingsButton()
    private let whiteView = WhiteView()
    private let healthButton1 =  HealthButton()
    private let healthButton2 =  HealthButton()
    private let healthButton3 =  HealthButton()
    private let heartWhite = WhiteView()
    private let heartView = HeartView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setContraint()
    }
    
    private func setupViews() {
        view.addSubview(scrollView)
        view.addSubview(contentView)
        view.addSubview(pageLabel)
        view.addSubview(settingsButton)
        view.addSubview(whiteView)
        
        healthButton1.configure(image: UIImage(named: "c1")!, title: "Blood pressure", textColor: UIColor(red: 84/255, green: 177/255, blue: 121/255, alpha: 1))
        view.addSubview(healthButton1)
        
        healthButton2.configure(image: UIImage(named: "c2")!, title: "Oxygen", textColor: UIColor(red: 61/255, green: 141/255, blue: 216/255, alpha: 1))
        view.addSubview(healthButton2)
        
        healthButton3.configure(image: UIImage(named: "c3")!, title: "Heart rate", textColor: UIColor(red: 255/255, green: 95/255, blue: 114/255, alpha: 1))
        view.addSubview(healthButton3)
        
        view.addSubview(heartWhite)
        view.addSubview(heartView)
    }
   
    private func setContraint() {
        scrollView.snp.makeConstraints { make in
            make.leading.top.bottom.trailing.equalToSuperview()
        }
        
        contentView.snp.makeConstraints { make in
            make.leading.top.bottom.trailing.equalTo(scrollView)
            make.height.equalTo(1000)
        }
        
        pageLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(84)
            make.height.equalTo(35)
            make.width.equalTo(88)
        }
        
        settingsButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().inset(14)
            make.top.equalToSuperview().inset(54)
            make.width.height.equalTo(20)
        }
        
        whiteView.snp.makeConstraints { make in
            make.height.equalTo(82)
            make.width.equalTo(359)
            make.trailing.trailing.equalToSuperview().inset(8)
            make.top.equalToSuperview().inset(135)
        }
        
        healthButton1.snp.makeConstraints { make in
            make.leading.bottom.top.equalTo(whiteView).inset(8)
            make.width.equalTo(111)
            make.height.equalTo(66)
        }
        
        healthButton2.snp.makeConstraints { make in
            make.bottom.top.equalTo(whiteView).inset(8)
            make.leading.equalTo(whiteView).inset(124)
            make.width.equalTo(111)
            make.height.equalTo(66)
        }
        
        healthButton3.snp.makeConstraints { make in
            make.bottom.top.equalTo(whiteView).inset(8)
            make.leading.equalTo(whiteView).inset(240)
            make.width.equalTo(111)
            make.height.equalTo(66)
        }
        
        heartWhite.snp.makeConstraints { make in
            make.width.equalTo(359)
            make.height.equalTo(360)
            make.leading.trailing.equalToSuperview().inset(8)
            make.top.equalToSuperview().inset(225)
        }
        
        heartView.snp.makeConstraints { make in
            make.width.equalTo(359)
            make.height.equalTo(360)
            make.leading.trailing.equalToSuperview().inset(8)
            make.top.equalToSuperview().inset(225)
        }
        
    }

}
