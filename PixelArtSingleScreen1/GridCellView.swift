//
//  GridCellView.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/6/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class GridCellView: NSView{
    
    var row : Int = 1
    var column: Int = 1
    var fillColor: NSColor = NSColor.white
    
    var viewController:ViewController!
    
    var palletteNumber = 0
    
    func palletteUpdate( notification: NSNotification ){
        self.palletteNumber = notification.userInfo?["palletteNumber"] as! Int
        
        
    }
    
    func updateColorForSquare(selectedColor:Int){
        var color = NSColor.black
        self.palletteNumber = 0
        //NSLog(" pallette number \(self.palletteNumber)")
        if self.palletteNumber == 0{
            color = Helpers.ColorsForButtons.colors[selectedColor ]
        }else if self.palletteNumber == 1{
            
            color = Helpers.ColorsForButtons2.colors[selectedColor ]
        }else if self.palletteNumber == 2{
            color = Helpers.ColorsForButtons3.colors[selectedColor ]
        }else if self.palletteNumber == 3{            
            color = Helpers.ColorsForButtons4.colors[selectedColor ]
        }else if self.palletteNumber == 4{
            color = Helpers.ColorsForButtons8.colors[selectedColor ]
        }else if self.palletteNumber == 5{
            color = Helpers.ColorsForButtons9.colors[selectedColor ]
        }else if self.palletteNumber == 6{
            color = Helpers.ColorsForButtons10.colors[selectedColor ]
        }else if self.palletteNumber == 7{
            color = Helpers.ColorsForButtons11.colors[selectedColor ]
        }else if self.palletteNumber == 8{
            color = Helpers.ColorsForButtons12.colors[selectedColor ]
        }else if self.palletteNumber == 9{
            color = Helpers.ColorsForButtons13.colors[selectedColor ]
        }else if self.palletteNumber == 10{
            color = Helpers.ColorsForButtons14.colors[selectedColor ]
        }else if self.palletteNumber == 11{
            color = Helpers.ColorsForButtons15.colors[selectedColor ]
        }else if self.palletteNumber == 12{
            color = Helpers.ColorsForButtons16.colors[selectedColor]
        }else if self.palletteNumber == 13{
            color = Helpers.ColorsForButtons17.colors[selectedColor ]
        }
        
        //NSLog("update square color pallette \(self.palletteNumber)")
        self.fillColor = color
        
        needsDisplay = true
    }
    
    override func mouseUp(with event: NSEvent) {
        
       let selectedColorNumber = ViewController.selectedColorButtonNumber - 1
        
        if selectedColorNumber >= 0{
            self.updateColorForSquare(selectedColor: selectedColorNumber )
        }
        
        let gridSelected = Notification.Name.init("GridCellSelected")
        let nc = NotificationCenter.default
        let data = ["row": Int(self.row), "column": Int(self.column), "colorNumber": Int(selectedColorNumber )]
        nc.post(name: gridSelected, object:nil , userInfo: data)
        
        
        
    }
    
     
    
    override init(frame frameRect: NSRect) {
        super.init(frame:frameRect);
        
        let nc = NotificationCenter.default
        let palletteNotif = Notification.Name.init("palletteSelected")
        nc.addObserver(self,
                       selector: #selector(palletteUpdate),
                       name: palletteNotif,
                       object: nil)
      
    }
    
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!
        
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        if let context = NSGraphicsContext.current(){
            let c = context.cgContext
           // NSLog("draw color \(self.fillColor)")
            c.setFillColor( self.fillColor.cgColor)
            c.fill(dirtyRect)
        }
        
    }
    
    
}











