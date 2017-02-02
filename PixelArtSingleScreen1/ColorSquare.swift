//
//  ColorSquare.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/5/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class ColorSquare: NSView {
     
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
       
        if let context = NSGraphicsContext.current(){
            let c = context.cgContext
            
            //c.setFillColor( NSColor.blue.cgColor)
            //c.fill(dirtyRect)
        }
    }
}
