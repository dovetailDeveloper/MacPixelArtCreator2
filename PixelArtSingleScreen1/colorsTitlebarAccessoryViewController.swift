//
//  colorsTitlebarAccessoryViewController.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/6/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class colorsTitlebarAccessoryViewController: NSTitlebarAccessoryViewController {
    
    weak var colorsTitlebarDelegate: ColorsTitlebarDelegate?
    
    var selectedColorNumber:Int = 4
    var lastSelectedColorButtonNumber = 0
    
    public var palleteNumber = 0
         
    @IBOutlet weak var color1Button: CustomPlayButton!
    @IBOutlet weak var color2Button: CustomPlayButton!
    @IBOutlet weak var color3Button: CustomPlayButton!
    @IBOutlet weak var color4Button: CustomPlayButton!
    @IBOutlet weak var color5Button: CustomPlayButton!
    @IBOutlet weak var color6Button: CustomPlayButton!
    @IBOutlet weak var color7Button: CustomPlayButton!
    @IBOutlet weak var color8Button: CustomPlayButton!
    @IBOutlet weak var color9Button: CustomPlayButton!
    @IBOutlet weak var color10Button: CustomPlayButton!
    @IBOutlet weak var color11Button: CustomPlayButton!
    @IBOutlet weak var color12Button: CustomPlayButton!
    @IBOutlet weak var color13Button: CustomPlayButton!
    @IBOutlet weak var color14Button: CustomPlayButton!
    @IBOutlet weak var color15Button: CustomPlayButton!
    
    @IBOutlet weak var pallettePopup: NSPopUpButton!
    
    @IBOutlet weak var colorChosenBox: NSBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notif = Notification.Name.init("ColorChanged")
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: #selector(colorSelected), name: notif, object: nil)
        
        
        self.addPallettePopupItems()
        self.pallettePopup.selectItem(at: self.palleteNumber)
        fillColors(palletteIndex: self.palleteNumber)
        
        let fillAreaSelectedNotif = Notification.Name.init("fillAreaSelected")
        nc.addObserver(self,
                       selector: #selector(fillAreaWasSelected),
                       name: fillAreaSelectedNotif,
                       object: nil)
    }
    
    override func viewWillLayout() {
        self.view.layer?.backgroundColor = NSColor.init(red: 68/255, green: 137/255, blue: 26/255, alpha: 0.1).cgColor
        
    }
    
    func fillAreaWasSelected(){
        //make sure last button not selected
        //NSLog("last button selected \(self.selectedColorNumber)")
        //cellColorButton(number: self.selectedColorNumber + 1, isSelected: true)
    }
         
    @IBAction func selectedPalletePopup(_ sender: AnyObject) {
        
        if self.palleteNumber == sender.indexOfSelectedItem(){
            return
        }
        
        self.palleteNumber = sender.indexOfSelectedItem()
        
        let palletteSelected = Notification.Name.init("palletteSelected")
        let nc = NotificationCenter.default
        let data = ["palletteNumber": self.palleteNumber  ]
        nc.post(name: palletteSelected, object:nil , userInfo: data)
        
        fillColors(palletteIndex: self.palleteNumber )
        
        color1Button.needsDisplay = true
        color2Button.needsDisplay = true
        color3Button.needsDisplay = true
        color4Button.needsDisplay = true
        color5Button.needsDisplay = true
        color6Button.needsDisplay = true
        color7Button.needsDisplay = true
        color8Button.needsDisplay = true
        color9Button.needsDisplay = true
        color10Button.needsDisplay = true
        color11Button.needsDisplay = true
        color12Button.needsDisplay = true
        color13Button.needsDisplay = true
        color14Button.needsDisplay = true
        color15Button.needsDisplay = true
        
        
         
    }
    
    func addPallettePopupItems(){
        self.pallettePopup.removeAllItems()
        
        self.pallettePopup.addItem(withTitle: "basic pallete")
        self.pallettePopup.addItem(withTitle: "pallette 1")
        self.pallettePopup.addItem(withTitle: "pallette 2")
        self.pallettePopup.addItem(withTitle: "pallette 3")
        self.pallettePopup.addItem(withTitle: "pallette 4")
        self.pallettePopup.addItem(withTitle: "pallette 5")
        self.pallettePopup.addItem(withTitle: "pallette 6")
        self.pallettePopup.addItem(withTitle: "pallette 7")
        self.pallettePopup.addItem(withTitle: "pallette 8")
        self.pallettePopup.addItem(withTitle: "pallette 9")
        self.pallettePopup.addItem(withTitle: "pallette 10")
        self.pallettePopup.addItem(withTitle: "pallette 11")
        self.pallettePopup.addItem(withTitle: "pallette 12")
        self.pallettePopup.addItem(withTitle: "pallette 13")
        
        self.pallettePopup.selectItem(at: self.palleteNumber)
    }
    
    func cellColorButton(number: Int, isSelected:Bool){
        switch number {
        case 1:
            color1Button.isSelected = isSelected
            color1Button.setNeedsDisplay()
        case 2:
            color2Button.isSelected = isSelected
            color2Button.setNeedsDisplay()

        case 3:
            color3Button.isSelected = isSelected
            color3Button.setNeedsDisplay()

        case 4:
            color4Button.isSelected = isSelected
            color4Button.setNeedsDisplay()

        case 5:
            color5Button.isSelected = isSelected
            color5Button.setNeedsDisplay()

        case 6:
            color6Button.isSelected = isSelected
            color6Button.setNeedsDisplay()

        case 7:
            color7Button.isSelected = isSelected
            color7Button.setNeedsDisplay()

        case 8:
            color8Button.isSelected = isSelected
            color8Button.setNeedsDisplay()

        case 9:
            color9Button.isSelected = isSelected
            color9Button.setNeedsDisplay()

        case 10:
            color10Button.isSelected = isSelected
            color10Button.setNeedsDisplay()

        case 11:
            color11Button.isSelected = isSelected
            color11Button.setNeedsDisplay()

        case 12:
            color12Button.isSelected = isSelected
            color12Button.setNeedsDisplay()

        case 13:
            color13Button.isSelected = isSelected
            color13Button.setNeedsDisplay()

        case 14:
            color14Button.isSelected = isSelected
            color14Button.setNeedsDisplay()

        case 15:
            color15Button.isSelected = isSelected
            color15Button.setNeedsDisplay()

        default:
            color1Button.isSelected = isSelected
            color1Button.setNeedsDisplay()

        }
        
    }
    
    
    
    public func colorSelected(){
        lastSelectedColorButtonNumber = selectedColorNumber
        selectedColorNumber = ViewController.selectedColorButtonNumber
        
        if lastSelectedColorButtonNumber != selectedColorNumber{
            cellColorButton(number: selectedColorNumber, isSelected: true)
            cellColorButton(number: lastSelectedColorButtonNumber, isSelected: false)
            
        }
       
    }
    
    @IBAction func accessoryColorSelected(_ sender: NSButton){
        
    }
    
    func fillColors(palletteIndex: Int){
        
        
        if palletteIndex == 0{
            color1Button.up_color = Helpers.ColorsForButtons.color1
            color2Button.up_color = Helpers.ColorsForButtons.color2
            color3Button.up_color = Helpers.ColorsForButtons.color3
            color4Button.up_color = Helpers.ColorsForButtons.color4
            color5Button.up_color = Helpers.ColorsForButtons.color5
            color6Button.up_color = Helpers.ColorsForButtons.color6
            color7Button.up_color = Helpers.ColorsForButtons.color7
            color8Button.up_color = Helpers.ColorsForButtons.color8
            color9Button.up_color = Helpers.ColorsForButtons.color9
            color10Button.up_color = Helpers.ColorsForButtons.color10
            color11Button.up_color = Helpers.ColorsForButtons.color11
            color12Button.up_color = Helpers.ColorsForButtons.color12
            color13Button.up_color = Helpers.ColorsForButtons.color13
            color14Button.up_color = Helpers.ColorsForButtons.color14
            color15Button.up_color = Helpers.ColorsForButtons.color15

        } else if palletteIndex == 1{
            color1Button.up_color = Helpers.ColorsForButtons2.color1
            color2Button.up_color = Helpers.ColorsForButtons2.color2
            color3Button.up_color = Helpers.ColorsForButtons2.color3
            color4Button.up_color = Helpers.ColorsForButtons2.color4
            color5Button.up_color = Helpers.ColorsForButtons2.color5
            color6Button.up_color = Helpers.ColorsForButtons2.color6
            color7Button.up_color = Helpers.ColorsForButtons2.color7
            color8Button.up_color = Helpers.ColorsForButtons2.color8
            color9Button.up_color = Helpers.ColorsForButtons2.color9
            color10Button.up_color = Helpers.ColorsForButtons2.color10
            color11Button.up_color = Helpers.ColorsForButtons2.color11
            color12Button.up_color = Helpers.ColorsForButtons2.color12
            color13Button.up_color = Helpers.ColorsForButtons2.color13
            color14Button.up_color = Helpers.ColorsForButtons2.color14
            color15Button.up_color = Helpers.ColorsForButtons2.color15
        }else if palletteIndex == 2{
            color1Button.up_color = Helpers.ColorsForButtons3.color1
            color2Button.up_color = Helpers.ColorsForButtons3.color2
            color3Button.up_color = Helpers.ColorsForButtons3.color3
            color4Button.up_color = Helpers.ColorsForButtons3.color4
            color5Button.up_color = Helpers.ColorsForButtons3.color5
            color6Button.up_color = Helpers.ColorsForButtons3.color6
            color7Button.up_color = Helpers.ColorsForButtons3.color7
            color8Button.up_color = Helpers.ColorsForButtons3.color8
            color9Button.up_color = Helpers.ColorsForButtons3.color9
            color10Button.up_color = Helpers.ColorsForButtons3.color10
            color11Button.up_color = Helpers.ColorsForButtons3.color11
            color12Button.up_color = Helpers.ColorsForButtons3.color12
            color13Button.up_color = Helpers.ColorsForButtons3.color13
            color14Button.up_color = Helpers.ColorsForButtons3.color14
            color15Button.up_color = Helpers.ColorsForButtons3.color15
        }else if palletteIndex == 3{
            color1Button.up_color = Helpers.ColorsForButtons4.color1
            color2Button.up_color = Helpers.ColorsForButtons4.color2
            color3Button.up_color = Helpers.ColorsForButtons4.color3
            color4Button.up_color = Helpers.ColorsForButtons4.color4
            color5Button.up_color = Helpers.ColorsForButtons4.color5
            color6Button.up_color = Helpers.ColorsForButtons4.color6
            color7Button.up_color = Helpers.ColorsForButtons4.color7
            color8Button.up_color = Helpers.ColorsForButtons4.color8
            color9Button.up_color = Helpers.ColorsForButtons4.color9
            color10Button.up_color = Helpers.ColorsForButtons4.color10
            color11Button.up_color = Helpers.ColorsForButtons4.color11
            color12Button.up_color = Helpers.ColorsForButtons4.color12
            color13Button.up_color = Helpers.ColorsForButtons4.color13
            color14Button.up_color = Helpers.ColorsForButtons4.color14
            color15Button.up_color = Helpers.ColorsForButtons4.color15
        } else if palletteIndex == 4{
            color1Button.up_color = Helpers.ColorsForButtons8.color1
            color2Button.up_color = Helpers.ColorsForButtons8.color2
            color3Button.up_color = Helpers.ColorsForButtons8.color3
            color4Button.up_color = Helpers.ColorsForButtons8.color4
            color5Button.up_color = Helpers.ColorsForButtons8.color5
            color6Button.up_color = Helpers.ColorsForButtons8.color6
            color7Button.up_color = Helpers.ColorsForButtons8.color7
            color8Button.up_color = Helpers.ColorsForButtons8.color8
            color9Button.up_color = Helpers.ColorsForButtons8.color9
            color10Button.up_color = Helpers.ColorsForButtons8.color10
            color11Button.up_color = Helpers.ColorsForButtons8.color11
            color12Button.up_color = Helpers.ColorsForButtons8.color12
            color13Button.up_color = Helpers.ColorsForButtons8.color13
            color14Button.up_color = Helpers.ColorsForButtons8.color14
            color15Button.up_color = Helpers.ColorsForButtons8.color15
        }else if palletteIndex == 5{
            color1Button.up_color = Helpers.ColorsForButtons9.color1
            color2Button.up_color = Helpers.ColorsForButtons9.color2
            color3Button.up_color = Helpers.ColorsForButtons9.color3
            color4Button.up_color = Helpers.ColorsForButtons9.color4
            color5Button.up_color = Helpers.ColorsForButtons9.color5
            color6Button.up_color = Helpers.ColorsForButtons9.color6
            color7Button.up_color = Helpers.ColorsForButtons9.color7
            color8Button.up_color = Helpers.ColorsForButtons9.color8
            color9Button.up_color = Helpers.ColorsForButtons9.color9
            color10Button.up_color = Helpers.ColorsForButtons9.color10
            color11Button.up_color = Helpers.ColorsForButtons9.color11
            color12Button.up_color = Helpers.ColorsForButtons9.color12
            color13Button.up_color = Helpers.ColorsForButtons9.color13
            color14Button.up_color = Helpers.ColorsForButtons9.color14
            color15Button.up_color = Helpers.ColorsForButtons9.color15
        }else if palletteIndex == 6{
            color1Button.up_color = Helpers.ColorsForButtons10.color1
            color2Button.up_color = Helpers.ColorsForButtons10.color2
            color3Button.up_color = Helpers.ColorsForButtons10.color3
            color4Button.up_color = Helpers.ColorsForButtons10.color4
            color5Button.up_color = Helpers.ColorsForButtons10.color5
            color6Button.up_color = Helpers.ColorsForButtons10.color6
            color7Button.up_color = Helpers.ColorsForButtons10.color7
            color8Button.up_color = Helpers.ColorsForButtons10.color8
            color9Button.up_color = Helpers.ColorsForButtons10.color9
            color10Button.up_color = Helpers.ColorsForButtons10.color10
            color11Button.up_color = Helpers.ColorsForButtons10.color11
            color12Button.up_color = Helpers.ColorsForButtons10.color12
            color13Button.up_color = Helpers.ColorsForButtons10.color13
            color14Button.up_color = Helpers.ColorsForButtons10.color14
            color15Button.up_color = Helpers.ColorsForButtons10.color15
        }else if palletteIndex == 7{
            color1Button.up_color = Helpers.ColorsForButtons11.color1
            color2Button.up_color = Helpers.ColorsForButtons11.color2
            color3Button.up_color = Helpers.ColorsForButtons11.color3
            color4Button.up_color = Helpers.ColorsForButtons11.color4
            color5Button.up_color = Helpers.ColorsForButtons11.color5
            color6Button.up_color = Helpers.ColorsForButtons11.color6
            color7Button.up_color = Helpers.ColorsForButtons11.color7
            color8Button.up_color = Helpers.ColorsForButtons11.color8
            color9Button.up_color = Helpers.ColorsForButtons11.color9
            color10Button.up_color = Helpers.ColorsForButtons11.color10
            color11Button.up_color = Helpers.ColorsForButtons11.color11
            color12Button.up_color = Helpers.ColorsForButtons11.color12
            color13Button.up_color = Helpers.ColorsForButtons11.color13
            color14Button.up_color = Helpers.ColorsForButtons11.color14
            color15Button.up_color = Helpers.ColorsForButtons11.color15
        }else if palletteIndex == 8{
            color1Button.up_color = Helpers.ColorsForButtons12.color1
            color2Button.up_color = Helpers.ColorsForButtons12.color2
            color3Button.up_color = Helpers.ColorsForButtons12.color3
            color4Button.up_color = Helpers.ColorsForButtons12.color4
            color5Button.up_color = Helpers.ColorsForButtons12.color5
            color6Button.up_color = Helpers.ColorsForButtons12.color6
            color7Button.up_color = Helpers.ColorsForButtons12.color7
            color8Button.up_color = Helpers.ColorsForButtons12.color8
            color9Button.up_color = Helpers.ColorsForButtons12.color9
            color10Button.up_color = Helpers.ColorsForButtons12.color10
            color11Button.up_color = Helpers.ColorsForButtons12.color11
            color12Button.up_color = Helpers.ColorsForButtons12.color12
            color13Button.up_color = Helpers.ColorsForButtons12.color13
            color14Button.up_color = Helpers.ColorsForButtons12.color14
            color15Button.up_color = Helpers.ColorsForButtons12.color15
        }else if palletteIndex == 9{
            color1Button.up_color = Helpers.ColorsForButtons13.color1
            color2Button.up_color = Helpers.ColorsForButtons13.color2
            color3Button.up_color = Helpers.ColorsForButtons13.color3
            color4Button.up_color = Helpers.ColorsForButtons13.color4
            color5Button.up_color = Helpers.ColorsForButtons13.color5
            color6Button.up_color = Helpers.ColorsForButtons13.color6
            color7Button.up_color = Helpers.ColorsForButtons13.color7
            color8Button.up_color = Helpers.ColorsForButtons13.color8
            color9Button.up_color = Helpers.ColorsForButtons13.color9
            color10Button.up_color = Helpers.ColorsForButtons13.color10
            color11Button.up_color = Helpers.ColorsForButtons13.color11
            color12Button.up_color = Helpers.ColorsForButtons13.color12
            color13Button.up_color = Helpers.ColorsForButtons13.color13
            color14Button.up_color = Helpers.ColorsForButtons13.color14
            color15Button.up_color = Helpers.ColorsForButtons13.color15
        } else if palletteIndex == 10{
            color1Button.up_color = Helpers.ColorsForButtons14.color1
            color2Button.up_color = Helpers.ColorsForButtons14.color2
            color3Button.up_color = Helpers.ColorsForButtons14.color3
            color4Button.up_color = Helpers.ColorsForButtons14.color4
            color5Button.up_color = Helpers.ColorsForButtons14.color5
            color6Button.up_color = Helpers.ColorsForButtons14.color6
            color7Button.up_color = Helpers.ColorsForButtons14.color7
            color8Button.up_color = Helpers.ColorsForButtons14.color8
            color9Button.up_color = Helpers.ColorsForButtons14.color9
            color10Button.up_color = Helpers.ColorsForButtons14.color10
            color11Button.up_color = Helpers.ColorsForButtons14.color11
            color12Button.up_color = Helpers.ColorsForButtons14.color12
            color13Button.up_color = Helpers.ColorsForButtons14.color13
            color14Button.up_color = Helpers.ColorsForButtons14.color14
            color15Button.up_color = Helpers.ColorsForButtons14.color15
        }else if palletteIndex == 11{
            color1Button.up_color = Helpers.ColorsForButtons15.color1
            color2Button.up_color = Helpers.ColorsForButtons15.color2
            color3Button.up_color = Helpers.ColorsForButtons15.color3
            color4Button.up_color = Helpers.ColorsForButtons15.color4
            color5Button.up_color = Helpers.ColorsForButtons15.color5
            color6Button.up_color = Helpers.ColorsForButtons15.color6
            color7Button.up_color = Helpers.ColorsForButtons15.color7
            color8Button.up_color = Helpers.ColorsForButtons15.color8
            color9Button.up_color = Helpers.ColorsForButtons15.color9
            color10Button.up_color = Helpers.ColorsForButtons15.color10
            color11Button.up_color = Helpers.ColorsForButtons15.color11
            color12Button.up_color = Helpers.ColorsForButtons15.color12
            color13Button.up_color = Helpers.ColorsForButtons15.color13
            color14Button.up_color = Helpers.ColorsForButtons15.color14
            color15Button.up_color = Helpers.ColorsForButtons15.color15
        }else if palletteIndex == 12{
            color1Button.up_color = Helpers.ColorsForButtons16.color1
            color2Button.up_color = Helpers.ColorsForButtons16.color2
            color3Button.up_color = Helpers.ColorsForButtons16.color3
            color4Button.up_color = Helpers.ColorsForButtons16.color4
            color5Button.up_color = Helpers.ColorsForButtons16.color5
            color6Button.up_color = Helpers.ColorsForButtons16.color6
            color7Button.up_color = Helpers.ColorsForButtons16.color7
            color8Button.up_color = Helpers.ColorsForButtons16.color8
            color9Button.up_color = Helpers.ColorsForButtons16.color9
            color10Button.up_color = Helpers.ColorsForButtons16.color10
            color11Button.up_color = Helpers.ColorsForButtons16.color11
            color12Button.up_color = Helpers.ColorsForButtons16.color12
            color13Button.up_color = Helpers.ColorsForButtons16.color13
            color14Button.up_color = Helpers.ColorsForButtons16.color14
            color15Button.up_color = Helpers.ColorsForButtons16.color15
        }else if palletteIndex == 13{
            color1Button.up_color = Helpers.ColorsForButtons17.color1
            color2Button.up_color = Helpers.ColorsForButtons17.color2
            color3Button.up_color = Helpers.ColorsForButtons17.color3
            color4Button.up_color = Helpers.ColorsForButtons17.color4
            color5Button.up_color = Helpers.ColorsForButtons17.color5
            color6Button.up_color = Helpers.ColorsForButtons17.color6
            color7Button.up_color = Helpers.ColorsForButtons17.color7
            color8Button.up_color = Helpers.ColorsForButtons17.color8
            color9Button.up_color = Helpers.ColorsForButtons17.color9
            color10Button.up_color = Helpers.ColorsForButtons17.color10
            color11Button.up_color = Helpers.ColorsForButtons17.color11
            color12Button.up_color = Helpers.ColorsForButtons17.color12
            color13Button.up_color = Helpers.ColorsForButtons17.color13
            color14Button.up_color = Helpers.ColorsForButtons17.color14
            color15Button.up_color = Helpers.ColorsForButtons17.color15
        }
        
        
        
    }
  
    
    
    
}
