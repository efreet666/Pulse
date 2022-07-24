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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setContraint()
        
    }

    private func setupViews() {
        view.addSubview(pageNumberTitle)
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
    }
}
