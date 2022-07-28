//
//  ShapeView.swift
//  Pulse
//
//  Created by Влад Бокин on 28.07.2022.
//

import Foundation
import UIKit

class ShapeView: UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let shapeView: UIImageView = {
        let imageView = UIImageView()
//        imageView.image = UIImage(named: "Shape")
//        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    func configure() {
       
        
        // MARK: - Animation
        let shapeLayer = CAShapeLayer()

        func animationCircular() {
            let center = CGPoint(x: shapeView.frame.width / 2, y: shapeView.frame.height / 2)

            let endAngle = (-CGFloat.pi / 2)
            let startAngle = 2 * CGFloat.pi + endAngle

            // MARK: - BezierPath
            let circularPath = UIBezierPath(arcCenter: center, radius: 140, startAngle: startAngle, endAngle: endAngle, clockwise: false)

            // MARK: - shapeLayer
            shapeLayer.path = circularPath.cgPath
            shapeLayer.lineWidth = 8
            shapeLayer.fillColor = UIColor.clear.cgColor
            shapeLayer.strokeEnd = 1
            shapeLayer.lineCap = CAShapeLayerLineCap.round
            shapeLayer.strokeColor = CGColor(red: 100, green: 0, blue: 0, alpha: 1.0)
            //shapeLayer.frame = CGRect(x: 150, y: 150, width: 300, height: 300)
           
            
//            shapeView.snp.makeConstraints { make in
//                //make.trailing.leading.top.bottom.equalToSuperview()
//                make.width.height.equalTo(300)
//            }
            shapeView.frame = CGRect(x: 40, y: 40, width: 300, height: 300)
            addSubview(shapeView)
            shapeView.layer.addSublayer(shapeLayer)
        }

        func basicAnimation() {
            let basicAnmation = CABasicAnimation(keyPath: "strokeEnd")
            basicAnmation.toValue = 0
            basicAnmation.duration = CFTimeInterval(30)
            basicAnmation.fillMode = CAMediaTimingFillMode.backwards
            basicAnmation.isRemovedOnCompletion = false
            shapeLayer.add(basicAnmation, forKey: "basicAnimation")
        }
        animationCircular()
        basicAnimation()
        
        func setContraint() {
        addSubview(shapeView)
        NSLayoutConstraint.activate([
            shapeView.centerXAnchor.constraint(equalTo: centerXAnchor),
            shapeView.centerYAnchor.constraint(equalTo: centerYAnchor),
            shapeView.heightAnchor.constraint(equalToConstant: 300),
            shapeView.widthAnchor.constraint(equalToConstant: 300)
        ]
        )
        }

        setContraint()
    }
        
    
}
