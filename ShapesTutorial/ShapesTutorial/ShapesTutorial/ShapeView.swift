//
//  ShapeView.swift
//  ShapesTutorial
//
//  Created by Silviu Pop on 7/27/15.
//  Copyright (c) 2015 WeHeartSwift. All rights reserved.
//

import UIKit

class ShapeView: UIView {
    
    let size: CGFloat = 150
    let lineWidth: CGFloat = 3
    var fillColor: UIColor!
    var path: UIBezierPath!
    
    func randomColor() -> UIColor {
        let hue:CGFloat = CGFloat(Float(arc4random()) / Float(UINT32_MAX))
        return UIColor(hue: hue, saturation: 0.8, brightness: 1.0, alpha: 0.8)
    }
    
    func pointFrom(_ angle: CGFloat, radius: CGFloat, offset: CGPoint) -> CGPoint {
        return CGPoint(x: radius * cos(angle) + offset.x, y: radius * sin(angle) + offset.y)
    }
    
    func trianglePathInRect(_ rect:CGRect) -> UIBezierPath {
        let path = UIBezierPath()
        
        path.move(to: CGPoint(x: rect.width / 2.0, y: rect.origin.y))
        path.addLine(to: CGPoint(x: rect.width,y: rect.height))
        path.addLine(to: CGPoint(x: rect.origin.x,y: rect.height))
        path.close()
        
        
        return path
    }
    
    func randomPath() -> UIBezierPath {
        
        let insetRect = self.bounds.insetBy(dx: lineWidth,dy: lineWidth)
        
        let shapeType = arc4random() % 3
        
        if shapeType == 0 {
            return UIBezierPath(roundedRect: insetRect, cornerRadius: 10.0)
        }
        
        if shapeType == 1 {
            return UIBezierPath(ovalIn: insetRect)
        }
        

        return trianglePathInRect(insetRect)
    }
    
    init(origin: CGPoint) {

        super.init(frame: CGRect(x: 0.0, y: 0.0, width: size, height: size))
        
        self.fillColor = randomColor()
        self.path = randomPath()
        

        self.path = randomPath()
        
        self.center = origin
        
        self.backgroundColor = UIColor.clear
        
        initGestureRecognizers()
    }
    
    func initGestureRecognizers() {
        let panGR = UIPanGestureRecognizer(target: self, action: #selector(ShapeView.didPan(_:)))
        addGestureRecognizer(panGR)
        
        let pinchGR = UIPinchGestureRecognizer(target: self, action: #selector(ShapeView.didPinch(_:)))
        addGestureRecognizer(pinchGR)
        
        let rotationGR = UIRotationGestureRecognizer(target: self, action: #selector(ShapeView.didRotate(_:)))
        addGestureRecognizer(rotationGR)
    }
    
    func didPan(_ panGR: UIPanGestureRecognizer) {
        
        self.superview!.bringSubview(toFront: self)
        
        var translation = panGR.translation(in: self)
        
        translation = translation.applying(self.transform)
        
        self.center.x += translation.x
        self.center.y += translation.y
        
        panGR.setTranslation(CGPoint.zero, in: self)
    }
    
    func didPinch(_ pinchGR: UIPinchGestureRecognizer) {
        
        self.superview!.bringSubview(toFront: self)
        
        let scale = pinchGR.scale
        
        self.transform = self.transform.scaledBy(x: scale, y: scale)
        
        pinchGR.scale = 1.0
    }
    
    func didRotate(_ rotationGR: UIRotationGestureRecognizer) {
        
        self.superview!.bringSubview(toFront: self)
        
        let rotation = rotationGR.rotation
        
        self.transform = self.transform.rotated(by: rotation)
        
        rotationGR.rotation = 0.0
    }


    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        
        self.fillColor.setFill()
        
        self.path.fill()
        
        var name = "hatch"
        if arc4random() % 2 == 0 {
            name = "cross-hatch"
        }
        
        let color = UIColor(patternImage: UIImage(named: name)!)
        
        color.setFill()
        
        if arc4random() % 2 == 0 {
            path.fill()
        }
        
        UIColor.black.setStroke()
        
        path.lineWidth = self.lineWidth
        
        path.stroke()
    }

}
