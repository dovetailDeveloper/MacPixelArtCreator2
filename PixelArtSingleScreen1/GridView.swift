//
//  GridView.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/6/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class GridView: NSView {
    
    var rows = 200
    var columns = 200
    var squareWidth = 30.0
    

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
            drawGrid()
        
    }
    
    override init(frame frameRect: NSRect) {
        super.init(frame:frameRect);
       
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!
        
        //selectedGridSize notification
        let nc = NotificationCenter.default
        let selectedGridSize = Notification.Name.init("selectedGridSize")
        nc.addObserver(self,
                       selector: #selector(changeGridSize),
                       name: selectedGridSize,
                       object: nil)
        
    }
    
    
    init(frame frameRect: NSRect, rows:Int, columns: Int, squareWidth: Double) {
        super.init(frame:frameRect);
        self.rows = rows
        self.columns = columns
        self.squareWidth = squareWidth
    }
    
    func updateGridSize(index:Int){
        switch index {
        case 0:
            squareWidth = 40
            
        case 1:
            squareWidth = 30
            
        case 2:
            squareWidth = 20
            
        case 3:
            squareWidth = 15
            
        case 4:
            squareWidth = 10
            
            
        default:
            squareWidth = 30
            
        }
        
        needsDisplay = true
    }
    
    func changeGridSize(notification: NSNotification){
        
        let rowGridSizeSelected = notification.userInfo?["selectedSizeNumber"] as! Int
        
        updateGridSize(index: rowGridSizeSelected)
    }
    
    func drawGrid(){
        
        if let context = NSGraphicsContext.current(){
            let c = context.cgContext
            
            //horizontal lines
            for index in 1...self.rows  {
                c.setStrokeColor(NSColor(calibratedRed: 0.2, green: 0.3, blue: 0.5, alpha: 0.6).cgColor)
                c.setLineWidth(1.0)
                c.move(to: CGPoint(x: 0, y: squareWidth ))
                c.addLine(to: CGPoint(x: 2000.0, y: CGFloat(squareWidth) ))
                c.move(to: CGPoint(x: 0, y: CGFloat(index) * CGFloat(squareWidth) ))
                c.addLine(to: CGPoint(x: CGFloat(2000), y: CGFloat(index) * CGFloat(squareWidth)))
                c.strokePath()
            }
            
            //vertical lines
            for index in 1...self.columns  {
                c.setStrokeColor(NSColor(calibratedRed: 0.2, green: 0.3, blue: 0.5, alpha: 0.6).cgColor)
                c.setLineWidth(1.0)
                c.move(to: CGPoint(x: squareWidth, y:0  ))
                c.addLine(to: CGPoint(x:CGFloat(squareWidth),  y:  CGFloat(self.bounds.size.width) ))
                c.move(to: CGPoint(x:  CGFloat(index) * CGFloat(squareWidth), y: 0 ))
                c.addLine(to: CGPoint(x:CGFloat(index) * CGFloat(squareWidth), y: CGFloat(2000)))
                c.strokePath()
            }
           
        }
        
    }
    
}
