//
//  customElipseView.swift
//  Pulse
//
//  Created by Влад Бокин on 27.07.2022.
//z
import Foundation
import UIKit

class CustomElipseView: UIView {
    
    override func draw(_ rect: CGRect) {
        drawRingFittingInsideView()
    }
    
    private func drawRingFittingInsideView() -> () {
        let halfSize:CGFloat = min( bounds.size.width/2, bounds.size.height/2)
        let desiredLineWidth:CGFloat = 47 // your desired value
            
        let circlePath = UIBezierPath(
                arcCenter: CGPoint(x:halfSize,y:halfSize),
                radius: CGFloat( halfSize - (desiredLineWidth/2) ),
                startAngle: CGFloat(0),
                endAngle:CGFloat(M_PI * 2),
                clockwise: true)
    
         let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
            
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor(red: 247/255, green: 249/255, blue: 255/255, alpha: 1).cgColor
         shapeLayer.lineWidth = desiredLineWidth
    
         layer.addSublayer(shapeLayer)
     }
}
