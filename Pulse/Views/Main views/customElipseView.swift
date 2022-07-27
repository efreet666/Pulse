//
//  customElipseView.swift
//  Pulse
//
//  Created by Влад Бокин on 27.07.2022.
//z
import Foundation
import UIKit

class Ring: UIView {
    
    override func draw(_ rect: CGRect) {
        drawRingFittingInsideView()
    }
    
    internal func drawRingFittingInsideView() -> () {
        let halfSize:CGFloat = min( bounds.size.width/2, bounds.size.height/2)
        let desiredLineWidth:CGFloat = 55 // your desired value
            
        let circlePath = UIBezierPath(
                arcCenter: CGPoint(x:halfSize,y:halfSize),
                radius: CGFloat( halfSize - (desiredLineWidth/2) ),
                startAngle: CGFloat(0),
                endAngle:CGFloat(M_PI * 2),
                clockwise: true)
    
         let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
            
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.white.cgColor
         shapeLayer.lineWidth = desiredLineWidth
    
         layer.addSublayer(shapeLayer)
     }
}
