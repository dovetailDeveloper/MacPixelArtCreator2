//
//  HelpView.swift
//  PixelArtSingleScreen1
//
//  Created by Robert Steven Schwab on 11/12/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class HelpView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        NSColor.white.setFill()
        NSRectFill(dirtyRect)
    }
    
    required init?(coder: NSCoder) {
       super.init(coder: coder)
       self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.red.cgColor
        
    }
    
    
    
}
