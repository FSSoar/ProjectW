//
//  GraphicsClassses.swift
//  Himanshu Minocha
//
//  Created by Himanshu Minocha on 6/12/15.
//  Copyright (c) 2015 Himanshu Minocha. All rights reserved.
//

import Foundation

import UIKit
/*


@IBDesignable class roundButtons:UIButton {




@IBInspectable var fillColor: UIColor = UIColor.greenColor()




override func drawRect(rect: CGRect) {




var path = UIBezierPath(ovalInRect: rect)

fillColor.setFill()
path.fill()

}
}


@IBDesignable class roundViews:UIView {




@IBInspectable var fillColor: UIColor = UIColor.greenColor()




override func drawRect(rect: CGRect) {




var path = UIBezierPath(ovalInRect: rect)

//   let randomXOffset2 = (arc4random_uniform(1024))


fillColor.setFill()
path.fill()

}
}

*/


@IBDesignable class roundButtons:UIButton {
    
    
    
    
    @IBInspectable var fillColor: UIColor = UIColor.greenColor()
    
    
    
    
    override func drawRect(rect: CGRect) {
        
        
        
        
        let path = UIBezierPath(ovalInRect: rect)
        
        fillColor.setFill()
        path.fill()
        
    }
}


@IBDesignable class roundViews:UIView {
    
    
    
    
    @IBInspectable var fillColor: UIColor = UIColor.greenColor()
    
    
    
    
    override func drawRect(rect: CGRect) {
        
        
        
        
        let path = UIBezierPath(ovalInRect: rect)
        fillColor.setFill()
        path.fill()
        
    }
}

@IBDesignable class concentricCirclesView:UIView {
    
    
    
    
    @IBInspectable var InteriorColor: UIColor = UIColor.whiteColor()
    @IBInspectable var ExteriorColor: UIColor = UIColor.blackColor()
    @IBInspectable var thinckness:CGFloat = 10
    
    var AngleOfCircle:CGFloat = 10
    
    
    
    
    override func drawRect(rect: CGRect) {
        
        
        let π:CGFloat = CGFloat(M_PI)
        
        
        // 1
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        
        // 2
        let radius: CGFloat = max(bounds.width, bounds.height)
        
        // 3
        let arcWidth: CGFloat = thinckness
        
        // 4
        let startAngle: CGFloat = 3 * π / 4
        let endAngle: CGFloat = π / 4
        
        // 5
        let path = UIBezierPath(arcCenter: center,
            radius: radius/2 - arcWidth/2,
            startAngle: 0,
            endAngle: AngleOfCircle,
            clockwise: true)
        
        // 6
        path.lineWidth = arcWidth
        // counterColor.setStroke()
        InteriorColor.setFill()
        ExteriorColor.setStroke()
        
        
        path.fill()
        path.stroke()
        let angleDifference: CGFloat = 2 * π - startAngle + endAngle
        
        
        let arcLengthPerGlass = angleDifference / CGFloat(AngleOfCircle)
        
        
        let outlineEndAngle = arcLengthPerGlass * CGFloat(AngleOfCircle) + startAngle
        
        //2 - draw the outer arc
        let outlinePath = UIBezierPath(arcCenter: center,
            radius: bounds.width/2 - 10,
            startAngle: 0,
            endAngle: AngleOfCircle,
            clockwise: true)
    }
    
}

@IBDesignable class concentricCirclesButon:UIButton {
    
    
    
    
    @IBInspectable var InteriorColor: UIColor = UIColor.whiteColor()
    @IBInspectable var ExteriorColor: UIColor = UIColor.blackColor()
    @IBInspectable var thinckness:CGFloat = 10
    
    var AngleOfCircle:CGFloat = 10
    
    
    
    
    override func drawRect(rect: CGRect) {
        
        
        let π:CGFloat = CGFloat(M_PI)
        
        
        // 1
        let center = CGPoint(x:bounds.width/2, y: bounds.height/2)
        
        // 2
        let radius: CGFloat = max(bounds.width, bounds.height)
        
        // 3
        let arcWidth: CGFloat = thinckness
        
        // 4
        let startAngle: CGFloat = 3 * π / 4
        let endAngle: CGFloat = π / 4
        
        // 5
        var path = UIBezierPath(arcCenter: center,
            radius: radius/2 - arcWidth/2,
            startAngle: 0,
            endAngle: AngleOfCircle,
            clockwise: true)
        
        // 6
        path.lineWidth = arcWidth
        // counterColor.setStroke()
        InteriorColor.setFill()
        ExteriorColor.setStroke()
        
        
        path.fill()
        path.stroke()
        
        
        let angleDifference: CGFloat = 2 * π - startAngle + endAngle
        
        
        let arcLengthPerGlass = angleDifference / CGFloat(AngleOfCircle)
        
        let outlineEndAngle = arcLengthPerGlass * CGFloat(AngleOfCircle) + startAngle
        
        //2 - draw the outer arc
        var outlinePath = UIBezierPath(arcCenter: center,
            radius: bounds.width/2 - 10,
            startAngle: 0,
            endAngle: AngleOfCircle,
            clockwise: true)
        
    }
    
}
