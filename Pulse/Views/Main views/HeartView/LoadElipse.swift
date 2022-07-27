//
//  LoadElipse.swift
//  Pulse
//
//  Created by Влад Бокин on 27.07.2022.
//

import Foundation
import UIKit

class LoadElipse: UIView {
    
    override func draw(_ rect: CGRect) {
        drawRingFittingInsideView()
    }
    
    private func drawRingFittingInsideView() -> () {
        let halfSize:CGFloat = min( bounds.size.width/2, bounds.size.height/2)
        
        let desiredLineWidth: CGFloat = 6
            
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
