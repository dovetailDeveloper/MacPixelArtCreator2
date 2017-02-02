//
//  imageTitlebarAccessoryViewController.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/7/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class imageTitlebarAccessoryViewController: NSTitlebarAccessoryViewController {
    
    var hi = "hi"
     
    @IBOutlet weak var gridSizePopup: NSPopUpButton!
    @IBOutlet weak var imageSizePopup: NSPopUpButton!
    @IBOutlet weak var showGridCheckbox: NSButton!
    
 
    @IBAction func pressedCreateImage(_ sender: AnyObject) {
        let gridSelected = Notification.Name.init("pressedCreateImage")
        let nc = NotificationCenter.default
        nc.post(name: gridSelected, object:nil , userInfo: nil)
    }
    
    override func viewDidLoad() {
        
    }
    
    override func awakeFromNib() {
        

    }
    
    
    
    override func viewWillLayout() {
        self.view.layer?.backgroundColor = NSColor.init(red: 68/255, green: 137/255, blue: 26/255, alpha: 0.1).cgColor
 
        //grid size popup
        gridSizePopup.removeAllItems()
        
        let size40 = "40x40"
        gridSizePopup.addItem(withTitle: size40)

        let size30 = "30x30"
        gridSizePopup.addItem(withTitle: size30)

        let size20 = "20x20"
        gridSizePopup.addItem(withTitle: size20)
        
        let size15 = "15x15"
        gridSizePopup.addItem(withTitle: size15)
        
        let size10 = "10x10"
        gridSizePopup.addItem(withTitle: size10)
        gridSizePopup.selectItem(at: 1)
        
        
        // image size popup
        imageSizePopup.removeAllItems()
        
        let xsmallSize = "xsmall"
        imageSizePopup.addItem(withTitle: xsmallSize)
        
        let smallSize = "small"
        imageSizePopup.addItem(withTitle: smallSize)
        
        let mediumSize = "medium"
        imageSizePopup.addItem(withTitle: mediumSize)
        
        let largeSize = "largeSize"
        imageSizePopup.addItem(withTitle: largeSize)
        
        let xlargeSize = "xlargeSize"
        imageSizePopup.addItem(withTitle: xlargeSize)
        
        imageSizePopup.selectItem(at: 2)
    }
    
    @IBAction func pressedSelectFillArea(_ sender: NSButton) {
        let pressedSelectGridArea = Notification.Name.init("pressedSelectGridArea")
        let nc = NotificationCenter.default
        let data = ["isSelected": sender.state]
        nc.post(name: pressedSelectGridArea, object:nil , userInfo: data)
        
        
        
    }
     
    
    func changeGridSize(index: Int){
        let selectedGridSize = Notification.Name.init("selectedGridSize")
        let nc = NotificationCenter.default
        let data = ["selectedSizeNumber": index]
        nc.post(name: selectedGridSize, object:nil , userInfo: data)
    }
    
    @IBAction func selectedGridSizePopup(_ sender: AnyObject) {
        
        let indexOfSelected = sender.indexOfSelectedItem()
        
        changeGridSize(index: indexOfSelected)
    }
    
    func showGrid(numbered: Int){
        let pressedShowGrid = Notification.Name.init("pressedShowGrid")
        let nc = NotificationCenter.default
        
        let data = ["showGrid": numbered ]
        nc.post(name: pressedShowGrid, object:nil , userInfo: data)
    }
    
    
    @IBAction func pressedShowGrid(_ sender: NSButton) {
        
       showGrid(numbered: sender.state)
        
    }
    @IBAction func selectedImageSize(_ sender: AnyObject) {
        
        let selectedImageSize = Notification.Name.init("selectedImageSize")
        let nc = NotificationCenter.default
        let data = ["sizeIndex": sender.indexOfSelectedItem() ]
        
        nc.post(name: selectedImageSize, object:nil , userInfo: data)
        
    }
    

}
