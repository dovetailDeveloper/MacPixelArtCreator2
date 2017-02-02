//
//  ViewController.swift
//  PixelArtSingleScreen1
//
//  Created by Robert Steven Schwab on 11/11/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//
import Cocoa

struct ViewImageSize {
    var width = 400
    var height = 300
}

struct GridCellInfo {
    var row = 1
    var column = 1
    var colorNumber = 1
}

struct SelectedfillAreaBounds{
    var minX = 0.0
    var minY = 0.0
    var maxX = 0.0
    var maxY = 0.0
}


class ViewController: NSViewController{
    
    @IBOutlet weak var imageCaptureView: NSImageView!
    static var selectedColorButtonNumber = 4
    
    @IBOutlet weak var selectColorBox: NSBox!
    
    @IBOutlet weak var gameBoardView: GameBoardView!
    @IBOutlet weak var RightSidePanel: NSView!
    @IBOutlet weak var gridView: NSView!
    @IBOutlet weak var fillAreaSelectionView: FillAreaSelectionView!
    
    @IBOutlet weak var chooseAColorLabel: NSTextField!
    
    var pixelArtGameModel: PixelArtGameModel!
    var gameBoardModel : GameBoardModel!
    
    var gridRowSelected = -1
    var gridColumnSelected = -1
    var selectedColorNumber = 1
    
    var lastestColorsAdded: [GridCellInfo] = [GridCellInfo]()
    
    var isSelectionAreaButtonPressed = false
    var fillSelectedAreaColorNumber = -1
    var isFillAreaSelectionMade = false
    
    var selectedFillArea = SelectedfillAreaBounds(minX: 0, minY: 0, maxX: 0, maxY: 0)
    var selectedCellsViewArray:[NSPoint] = [NSPoint]()
    
    var palletteNumber = 0
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        
    }
    
    override func awakeFromNib() {
        self.gridView.isHidden = false
    }
    
    var colorsArray : [NSColor] = [NSColor]()
    func helperFillColors(selectedNumber: Int) -> NSColor{
       
        NSLog("helper fill color selected num \(selectedNumber) pallete \(self.palletteNumber)")
        if self.palletteNumber == 0{
            colorsArray = Helpers.ColorsForButtons.colors
        }else if palletteNumber == 1{
             colorsArray = Helpers.ColorsForButtons2.colors
        }else if palletteNumber == 2{
            colorsArray = Helpers.ColorsForButtons3.colors
        }else if palletteNumber == 3{
            colorsArray = Helpers.ColorsForButtons4.colors
        }else if palletteNumber == 4{
            colorsArray = Helpers.ColorsForButtons8.colors
        }else if palletteNumber == 5{
            colorsArray = Helpers.ColorsForButtons9.colors
        }else if palletteNumber == 6{
            colorsArray = Helpers.ColorsForButtons10.colors
        }else if palletteNumber == 7{
            colorsArray = Helpers.ColorsForButtons11.colors
        }else if palletteNumber == 8{
            colorsArray = Helpers.ColorsForButtons12.colors
        }else if palletteNumber == 9{
            colorsArray = Helpers.ColorsForButtons13.colors
        }else if palletteNumber == 10{
            colorsArray = Helpers.ColorsForButtons14.colors
        }else if palletteNumber == 11{
            colorsArray = Helpers.ColorsForButtons15.colors
        }else if palletteNumber == 12{
            colorsArray = Helpers.ColorsForButtons16.colors
        }else if palletteNumber == 13{
            colorsArray = Helpers.ColorsForButtons17.colors
        }
        return colorsArray[selectedNumber]
    }
    func gridCellSelected(notification: NSNotification){
        
        
        gridRowSelected =     (notification.userInfo?["row"] as? Int)!
        gridColumnSelected =   (notification.userInfo?["column"] as? Int)!
        selectedColorNumber =    (notification.userInfo?["colorNumber"] as? Int)!
        
        
        self.gameBoardView.gridCellsArray[gridRowSelected][gridColumnSelected].fillColor =  helperFillColors(selectedNumber: selectedColorNumber)
        
        self.gameBoardView.gridDataArray[gridRowSelected][gridColumnSelected]["row"] = gridRowSelected
        self.gameBoardView.gridDataArray[gridRowSelected][gridColumnSelected]["column"] = gridColumnSelected
        self.gameBoardView.gridDataArray[gridRowSelected][gridColumnSelected]["colorNumber"] = selectedColorNumber
        self.gameBoardView.gridDataArray[gridRowSelected][gridColumnSelected]["palletteNumber"] = self.palletteNumber
        
        //add to undo array
        self.lastestColorsAdded.append(GridCellInfo(row: gridRowSelected, column: gridColumnSelected, colorNumber: selectedColorNumber))
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pixelArtGameModel = PixelArtGameModel()
        self.gameBoardModel = pixelArtGameModel.gameBoardModel
        self.gameBoardView.game =  self.pixelArtGameModel
        
        //call notification
        //use for changing color selection in toolbar accessory view
        let nc = NotificationCenter.default
        
        
        // observe for grid cell mouse pressed
        let gridSelected = Notification.Name.init("GridCellSelected")
        nc.addObserver(self,
                       selector: #selector(gridCellSelected),
                       name: gridSelected,
                       object: nil)
        
       
        
        //notify accessory checkbox show grid
        let pressedShowGrid = Notification.Name.init("pressedShowGrid")
        nc.addObserver(self,
                       selector: #selector(showGrid),
                       name: pressedShowGrid,
                       object: nil)
     

        //selectedGridSize notification
        let selectedGridSize = Notification.Name.init("selectedGridSize")
        nc.addObserver(self,
                       selector: #selector(changeSquareSize),
                       name: selectedGridSize,
                       object: nil)
        
        let selectedImageSize = Notification.Name.init("selectedImageSize")
        nc.addObserver(self,
                       selector: #selector(changeImageSize),
                       name: selectedImageSize,
                       object: nil)
        
        
        let pressedSelectGridArea = Notification.Name.init("pressedSelectGridArea")
        nc.addObserver(self,
                       selector: #selector(fillGridArea),
                       name: pressedSelectGridArea,
                       object: nil)
        
        
        let fillAreaSelected = Notification.Name.init("fillAreaSelected")
        nc.addObserver(self,
                       selector: #selector(fillSelectedArea),
                       name: fillAreaSelected,
                       object: nil)
        
        
        let palleteSelected = Notification.Name.init("palletteSelected")
        nc.addObserver(self,
                       selector: #selector(selectedPalleteNumber),
                       name: palleteSelected,
                       object: nil)
        
        
      
    }
    
    func selectedPalleteNumber(notification: NSNotification){
        let palleteNumber = notification.userInfo?["palletteNumber"] as! Int
        self.palletteNumber = palleteNumber
        self.gameBoardView.palletteNumber = self.palletteNumber
    
    }
  
    
    func checkGridCellsOverlapping(selectedFillArea: SelectedfillAreaBounds ){
        let gridCellViewsArray = self.gameBoardView.gridCellsArray
        let fillAreaBounds = selectedFillArea
        let minX = fillAreaBounds.minX
        let minY = fillAreaBounds.minY
        let maxX = fillAreaBounds.maxX
        let maxY = fillAreaBounds.maxY
        let fillAreaRect = NSRect(x: minX, y: minY, width: maxX-minX, height: maxY-minY )
        
        var numberGridCellsX = 0
        if let countX = gridCellViewsArray?[1].count{
            numberGridCellsX = countX
        }
        var numberGridCellsY = 0
        if let countY = gridCellViewsArray?.count{
            numberGridCellsY = countY
        }
        
        for indexY in 0...numberGridCellsY - 1{
            for  indexX in 0...numberGridCellsX  - 1 {
                let cell = gridCellViewsArray?[indexX][indexY]
                let cellFrame = cell?.frame
                if fillAreaRect.contains(cellFrame!){
                    //print("\(fillAreaRect)")
                    //cell?.fillColor = NSColor.blue
                    let cellSelectedPoint = NSPoint(x: indexX, y: indexY)
                    self.selectedCellsViewArray.append(cellSelectedPoint)
                }
                                 
            }
        }
        
        self.gameBoardView.needsDisplay = true
    }
  
    //selected area in view to fill with color
    func fillSelectedArea(notification: NSNotification){
        
        self.isFillAreaSelectionMade = true
        
        let minX  = notification.userInfo?["minX"] as! Double
        let minY  = notification.userInfo?["minY"] as! Double
        let maxX  = notification.userInfo?["maxX"] as! Double
        let maxY  = notification.userInfo?["maxY"] as! Double
        
        self.selectedFillArea = SelectedfillAreaBounds(minX: minX,
                                                       minY: minY,
                                                       maxX: maxX,
                                                       maxY: maxY)
                
        self.checkGridCellsOverlapping(selectedFillArea: self.selectedFillArea)
        
        //reset fill area button
        self.isSelectionAreaButtonPressed = false
        self.fillAreaSelectionView.isFillButtonPressed = false
        
        //show hint label
        let labelWidth = self.chooseAColorLabel.frame.width
        let labelHeight = self.chooseAColorLabel.frame.height
        self.chooseAColorLabel.isHidden = false
        self.chooseAColorLabel.frame = NSRect(x: CGFloat(minX - 50), y: CGFloat(maxY + 20), width: labelWidth, height: labelHeight)
    }

    //toolbar button fill area pressed
    func fillGridArea( notification: NSNotification ){
        let isSelected = notification.userInfo?["isSelected"] 
        self.isSelectionAreaButtonPressed = (isSelected != nil)
        self.fillAreaSelectionView.isFillButtonPressed = self.isSelectionAreaButtonPressed
        
        //show hide area to make fill area selection
        self.fillAreaSelectionView.isHidden = !self.isSelectionAreaButtonPressed    
    }
    
    func undoLastColorAdded(){
        var colorsAddedArray = self.lastestColorsAdded
        if colorsAddedArray.count > 0{
            
            let lastColorItem =  self.lastestColorsAdded.popLast()
            
            let lastRow    = lastColorItem?.row
            let lastColumn = lastColorItem?.column
            
            self.gameBoardView.gridCellsArray[lastRow!][lastColumn!].fillColor = NSColor.white
            self.gameBoardView.gridDataArray[lastRow!][lastColumn!]["fillColor"] = 1
            self.gameBoardView.needsDisplay = true
        }
        
    }
    
    func changeColorAt(row:Int, column: Int, colorNumber:Int){
        var gridData = self.gameBoardView.gridDataArray
        gridData[row][column]["colorNumber"] = 1
        
        let gridCells = self.gameBoardView.gridCellsArray
        gridCells?[row][column].fillColor = NSColor.green
        
        self.gameBoardView.needsDisplay = true
        
    }
    
    var squareWidth = 30.0
    func changeSquareSize(notification: NSNotification){
        let rowGridSizeSelected = notification.userInfo?["selectedSizeNumber"] as! Int
        switch rowGridSizeSelected {
        case 0:
            squareWidth = 40.0
            
        case 1:
            squareWidth = 30.0
           
        case 2:
            squareWidth = 20.0
            
        case 3:
            squareWidth = 15.0
            
        case 4:
            squareWidth = 10.0
            
            
        default:
            squareWidth = 30.0
            
        }
        
        self.gameBoardView.updateGridCellSize(width: squareWidth)
        
    }
    
    
    
    func changeImageSize( notification: NSNotification ){
        
        
        var imgScale = 0.5
        
        if let sizeIndexNotif = notification.userInfo?["sizeIndex"] as? Int{
            switch sizeIndexNotif {
            case 0:
                imgScale = 0.2
            case 1:
                imgScale = 0.3
            case 2:
                imgScale = 0.4
            case 3:
                imgScale = 0.6
            case 4:
                imgScale = 0.8
            default:
                imgScale = 1.0
                
            }
        }
        
        self.gameBoardView.imageScale = Float(imgScale)
        
    }
    
 
    func showGrid(notification: NSNotification){
        
        if let isSelected = notification.userInfo?["showGrid"] as? Int{
            if isSelected == 1{
                self.gridView.isHidden = false
            }else{
                self.gridView.isHidden = true
            }
            
        }
    }
    
    func colorCellViewsSelectedWith(colorNumber:Int){
        if  let gridCellViewsArray = self.gameBoardView.gridCellsArray{
            NSLog("color number: \(colorNumber) pallete number is \(self.palletteNumber)")
            for item in self.selectedCellsViewArray {
                let xPos = Int(item.x)
                let yPos = Int(item.y)
                 
                 gridCellViewsArray[xPos][yPos].fillColor = self.helperFillColors(selectedNumber: colorNumber )
                 self.gameBoardView.gridDataArray[xPos][yPos]["colorNumber"] = colorNumber
            }
        }
        self.gameBoardView.needsDisplay = true
        
        //reset array of cell views
        self.selectedCellsViewArray = [NSPoint]()
        
    }
    
    //accessory toolbar color choice made
    @IBAction func colorButtonPressed(_ sender: NSButton) {
        
        ViewController.selectedColorButtonNumber = sender.tag
        gameBoardView.selectedColorNumber  = sender.tag
       
        
        //call notification
        //use for changing color selection in toolbar accessory view
        let nc = NotificationCenter.default
        let notif = Notification.Name.init("ColorChanged")
        let data = ["colorSelected": sender.tag]
        nc.post(name: notif, object: nil, userInfo: data )
        
        //check if fill area selection made then use next color selection
        if self.isFillAreaSelectionMade{
            NSLog("after fill area color number: \(sender.tag)")
            self.colorCellViewsSelectedWith(colorNumber: sender.tag - 1 )
            
            //reset completed filling in selected area
            self.isFillAreaSelectionMade = false
            
            self.chooseAColorLabel.isHidden = true
            
            self.fillAreaSelectionView.stopShowingFillSelection()
        }
    }
    
    
    
    
    
    
}







