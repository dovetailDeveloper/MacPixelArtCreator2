//
//  GameBoardView.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/4/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

//added comment

import Cocoa
 

class GameBoardView: NSView {
    
    var game : PixelArtGameModel!
    var squareWidth = 30.0
    var numberOfRows = 110
    var numberOfColumns = 110
    var selectedColorNumber = 4
   
    
    var gridCellsArray:[[GridCellView]]!
    
    var gridDataArray = [[[String : Int]]]()
     
    var  delegate: GameBoardDelegate?
    
    var squareRect: NSRect?
    
    var isGridCellsDraw = false
    
    var imageScaleIndex = 1
    var imageScale: Float = 0.5
    var palletteNumber = 0
    
     
    required init?(coder: NSCoder) {
        
        gridCellsArray = (0...120).map {_ in (0...120).map {_ in GridCellView() }}         
 
        for gridColumn in 0...numberOfColumns{
            
            var rowArray = [[String:Int]]()
            for gridRow in 0...numberOfRows{
                
                let cellDictionary = ["row":gridRow, "column":gridColumn, "colorNumber": 2, "palletteNumber":0]
                rowArray.append(cellDictionary)
            }
            gridDataArray.append(rowArray)
        }
        
        super.init(coder: coder)
        
        drawGridCells()
        
        //notify if creae image clicked in accessory view
        let nc = NotificationCenter.default
        let gridSelected = Notification.Name.init("pressedCreateImage")
        nc.addObserver(self,
                       selector: #selector(createImageFromView),
                       name: gridSelected,
                       object: nil)
        
        
    }
    

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
    }
  
    //make sure cannot drag window from view area
    override var mouseDownCanMoveWindow: Bool{
        return false
    }
    
    func helperFillColors(selectedNumber: Int, pallette:Int) -> NSColor{
        var colorsArray : [NSColor] = [NSColor]()
         
        if pallette == 0{
            colorsArray = Helpers.ColorsForButtons.colors
        }else if pallette == 1{
            colorsArray = Helpers.ColorsForButtons2.colors
        }else if pallette == 2{
            colorsArray = Helpers.ColorsForButtons3.colors
        }else if pallette == 3{
            colorsArray = Helpers.ColorsForButtons4.colors
        }else if pallette == 4{
            colorsArray = Helpers.ColorsForButtons8.colors
        }else if pallette == 5{
            colorsArray = Helpers.ColorsForButtons9.colors
        }else if pallette == 6{
            colorsArray = Helpers.ColorsForButtons10.colors
        }else if pallette == 7{
            colorsArray = Helpers.ColorsForButtons11.colors
        }else if pallette == 8{
            colorsArray = Helpers.ColorsForButtons12.colors
        }else if pallette == 9{
            colorsArray = Helpers.ColorsForButtons13.colors
        }else if pallette == 10{
            colorsArray = Helpers.ColorsForButtons14.colors
        }else if pallette == 11{
            colorsArray = Helpers.ColorsForButtons15.colors
        }else if pallette == 12{
            colorsArray = Helpers.ColorsForButtons16.colors
        }else if pallette == 13{
            colorsArray = Helpers.ColorsForButtons17.colors
        }
        return colorsArray[selectedNumber]
    }
    
    func updateColorOfGridCells(){
        for gridColumn in 0...numberOfColumns{
            for gridRow in 0...numberOfRows{
                if let colorNumber = self.gridDataArray[gridRow][gridColumn]["colorNumber"]{                    
                    if let palletteNumber = self.gridDataArray[gridRow][gridColumn]["palletteNumber"]{
                        self.gridCellsArray[gridRow][gridColumn].fillColor = helperFillColors(selectedNumber: colorNumber, pallette: palletteNumber)
                    }
                     
                }else{
                     self.gridCellsArray[gridRow][gridColumn].fillColor = NSColor.white
                }
            }
        }
        needsDisplay = true
    }
    
    func updateGridCellSize(width: Double){
        self.squareWidth = width
        
        for gridColumn in 0...numberOfColumns{
            for gridRow in 0...numberOfRows{
               let cell = gridCellsArray[gridRow][gridColumn] as GridCellView
               let frame = NSRect(x: CGFloat(gridRow) * CGFloat(squareWidth), y: CGFloat(gridColumn) * CGFloat(squareWidth) , width: CGFloat(squareWidth), height: CGFloat(squareWidth))
               cell.frame = frame
                
            }
        }
         
        
        needsDisplay = true
    }
    
    
    func drawGridCells(){
        
        for gridColumn in 0...numberOfColumns - 1{
            for gridRow in 0...numberOfRows - 1{
                
                let frame = NSRect(x: CGFloat(gridRow) * CGFloat(squareWidth), y: CGFloat(gridColumn) * CGFloat(squareWidth), width: CGFloat(squareWidth), height: CGFloat(squareWidth))
                
                let cell = GridCellView(frame: frame)
                cell.row = gridRow
                cell.column = gridColumn
                cell.fillColor = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
                self.addSubview(cell)
                
                gridCellsArray[gridRow][gridColumn] = cell
                
                gridDataArray[gridRow][gridColumn] =  ["row":gridRow,"column":gridColumn,"colorNumber":1, "palletteNumber":0]
                
            }
        }
        needsDisplay = true
        
    }
    
    
    
    func createImageFromView(_ sender: Any){
        
        //open panel to save location
        let savePanel = NSSavePanel()
        
        //get the nsview display
        let captureView = self.window?.contentView
        let newRect = NSMakeRect(0, 0, (captureView?.bounds.width)!, (captureView?.bounds.height)! )
        let rep = captureView?.bitmapImageRepForCachingDisplay(in: newRect)
        
        var pixelWidth:Float  = imageScale * Float((captureView?.bounds.width)!)
        var pixelHeight:Float = imageScale * Float((captureView?.bounds.height)!)
        
        rep?.pixelsWide = Int(pixelWidth)
        rep?.pixelsHigh = Int(pixelHeight)
        
        captureView?.cacheDisplay(in:newRect, to: rep!)
       
        // make the image - tried to resize here
        let imgSize = NSMakeSize((captureView?.bounds.width)!, (captureView?.bounds.height)!  )
        let img = NSImage(size: imgSize)
        img.addRepresentation(rep!)
        
        //save to disk aster user accepts save panel
        savePanel.begin { (result: Int) -> Void in
            savePanel.allowedFileTypes = ["png"]
            if result == NSFileHandlingPanelOKButton {
                if let exportedFileURL = savePanel.url{
                    
                    do{
                        if let bits = img.representations.first as? NSBitmapImageRep{
                            
                            let data = bits.representation(using: NSPNGFileType, properties: [ : ])
                            try data?.write(to: exportedFileURL)
                        }
                    }catch{
                        NSLog("error exporting image")
                    }
                    
                }
            }
        }
    }
 
    
    
}




















