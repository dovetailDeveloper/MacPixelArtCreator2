//
//  CustomPlayButton.swift
//  State_Game_app
//
//  Created by Robert Steven Schwab on 10/30/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

enum CustomButtonType{
    case Play
    
}

class CustomPlayButton: NSButton {
    
    public var up_color:NSColor   = Helpers.ColorsForButtons.color4
    public var down_color:NSColor = Helpers.ColorsForButtons.color6
    public var isSelected = false
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
      
        
    }
    
    override var wantsUpdateLayer: Bool{
        return true
    }
    
    override func awakeFromNib() {
        self.wantsLayer = true
        self.layer?.cornerRadius = self.bounds.width * 0.5
    }
    
    override func updateLayer() {
        //self.layer?.cornerRadius = 2.0
        
        if( self.cell?.isHighlighted)!{
            if self.layer != nil{
                self.layer?.backgroundColor = down_color.cgColor
                self.layer?.borderColor = NSColor.blue.cgColor
                self.layer?.borderWidth = 2.0
            }
            
        }else{
            if self.layer != nil{
                self.layer?.backgroundColor = up_color.cgColor
                if isSelected{
                    self.layer?.borderWidth = 2
                    self.layer?.borderColor = NSColor.blue.cgColor
                }else{
                     self.layer?.borderColor = NSColor(calibratedRed: 128/255, green: 128/255, blue: 128/255, alpha: 1.0).cgColor
                    self.layer?.borderWidth = 3
                }
            }
            
        }
        
    }
    
    func setButtonText(text : String){
        
    }
    
    
    
}
