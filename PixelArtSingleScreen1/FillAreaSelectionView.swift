//
//  fillAreaSelectionView.swift
//  PixelArtSingleScreen1
//
//  Created by Robert Steven Schwab on 11/18/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class FillAreaSelectionView: NSView {

    var isFillButtonPressed = false
    var isFillAreaSelected = false
    var fillColorSelectedNumber:Int = -1
    let nc = NotificationCenter.default
    
    var selectionPathBoundingBox: NSRect = NSRect.zero
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
       
    }     
    
    override func awakeFromNib() {
        let nc = NotificationCenter.default
        let colorChanged = Notification.Name.init("ColorChanged")
        nc.addObserver(self,
                       selector: #selector(selectedColorChanged),
                       name: colorChanged,
                       object: nil)
    }
    
    func selectedColorChanged(notification: NSNotification){
        let data = notification.userInfo?["colorSelected"] as! Int
        
    }
    
    //mouse events
    var shapeLayer : CAShapeLayer!
    var startPoint: NSPoint!
    func stopShowingFillSelection(){
        if self.shapeLayer != nil{
            self.shapeLayer.removeFromSuperlayer()
            self.shapeLayer = nil
            self.isHidden = true
        }
    } 
   
    override func mouseDown(with event: NSEvent) {
        if self.shapeLayer != nil{
             self.shapeLayer.removeFromSuperlayer()
             self.shapeLayer = nil
             self.isHidden = true
        }
        if self.isFillButtonPressed{
//
            self.startPoint = self.convert(event.locationInWindow, from: nil)
            
            shapeLayer = CAShapeLayer()
            shapeLayer.lineWidth = 1.0
            shapeLayer.fillColor = NSColor.clear.cgColor
            shapeLayer.strokeColor = NSColor.blue.cgColor
            shapeLayer.lineDashPattern = [10,5]
            self.layer?.addSublayer(shapeLayer)
            
            var dashAnimation = CABasicAnimation()
            dashAnimation = CABasicAnimation(keyPath: "lineDashPhase")
            dashAnimation.duration = 0.75
            dashAnimation.fromValue = 0.0
            dashAnimation.toValue = 15.0
            dashAnimation.repeatCount = .infinity
            shapeLayer.add(dashAnimation, forKey: "linePhase")
        }
        
    }
    
    
    override func mouseDragged(with event: NSEvent) {
        if self.isFillButtonPressed{
            let point: NSPoint = self.convert(event.locationInWindow, from: nil)
            let path = CGMutablePath()
            path.move(to: self.startPoint)
            path.addLine(to: CGPoint(x: self.startPoint.x, y: point.y))
            path.addLine(to: CGPoint(x: point.x, y: point.y ))
            path.addLine(to: CGPoint(x: point.x, y: self.startPoint.y))
            path.closeSubpath()
            self.shapeLayer.path = path
        }
    }
    
    override func mouseUp(with event: NSEvent) {
        isFillAreaSelected = true
         if self.isFillButtonPressed{
            self.selectionPathBoundingBox = (self.shapeLayer.path?.boundingBox)!
            let minX = Double(self.selectionPathBoundingBox.minX)
            let minY = Double(self.selectionPathBoundingBox.minY)
            let maxX = Double(self.selectionPathBoundingBox.maxX)
            let maxY = Double(self.selectionPathBoundingBox.maxY)
             
            let fillAreaSelected = Notification.Name.init("fillAreaSelected")
            let data = ["minX": minX, "minY": minY, "maxX": maxX, "maxY": maxY]
            nc.post(name: fillAreaSelected, object:nil , userInfo: data)
        }
        
    }
    
    
    
}
