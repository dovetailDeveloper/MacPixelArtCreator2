//
//  PixelArtWindowController.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/6/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class PixelArtWindowController: NSWindowController , NSWindowDelegate, NSToolbarDelegate{
    
    var createImageAccessoryViewController : NSTitlebarAccessoryViewController!
    
    public var palletNumber = 0
    
    //toolbar accessory viewa
    var createImageAccessoryVC : NSTitlebarAccessoryViewController?
    var colorChoiceWindowAccessory: NSTitlebarAccessoryViewController?
    
    @IBOutlet weak var toolBarController: ToolbarController!
    
    
    @IBOutlet weak var createPngToolbarItemBox: NSBox!
    
    required init?(coder: NSCoder) {
         super.init(coder: coder)
        
         shouldCascadeWindows = true
        
    }
    
    
    var windowController: PixelArtWindowController?
    func createNewWindow(){
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        windowController = storyboard.instantiateController(withIdentifier: "Document Window Controller") as! PixelArtWindowController
        windowController?.showWindow(self)
    }
    
    
    @IBAction func toolbarCreateImageSelected(_ sender: AnyObject) {
        
        self.toolBarController.selectedItemIdentifier = "createImage"
 
        //update dropdown pallete number in vc before deleting
        let cv = window?.titlebarAccessoryViewControllers[0] as! colorsTitlebarAccessoryViewController
        cv.palleteNumber = self.palletNumber
        self.colorChoiceWindowAccessory?.removeFromParentViewController()
        
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        createImageAccessoryVC = storyboard.instantiateController(withIdentifier: "createImageAccessoryViewController") as? imageTitlebarAccessoryViewController
        createImageAccessoryVC?.layoutAttribute = .bottom
        
    
        window?.addTitlebarAccessoryViewController(createImageAccessoryVC!)
        self.createImageAccessoryViewController = createImageAccessoryVC
        
    }
    
    func updatePalleteDropDown(){
        let cv = window?.titlebarAccessoryViewControllers[0] as! colorsTitlebarAccessoryViewController
        let palletNumber = self.palletNumber
        cv.palleteNumber = palletNumber
        cv.pallettePopup.selectItem(at: palletNumber)
        cv.fillColors(palletteIndex: palletNumber)
        
        let vc = self.contentViewController as! ViewController
        vc.palletteNumber = palletNumber
    }
    
    func addToolbarColorAccessory(){
        
        self.toolBarController.selectedItemIdentifier = "selectColor"
     
        if self.createImageAccessoryViewController != nil{
            self.createImageAccessoryViewController.removeFromParentViewController()             
        }
        
        let storyboard = NSStoryboard(name: "Main", bundle: nil)
        self.colorChoiceWindowAccessory = storyboard.instantiateController(withIdentifier: "ColorChoiceWindowAccessory") as? colorsTitlebarAccessoryViewController
        self.colorChoiceWindowAccessory?.layoutAttribute = .bottom
        
        window?.addTitlebarAccessoryViewController(colorChoiceWindowAccessory!)
        
        //update pallete dropdown with last seleced value
       
        updatePalleteDropDown()
    }
    
    
    @IBAction func toolbarSelectColor(_ sender: AnyObject) {
        addToolbarColorAccessory()
    }
    
   
    func changeWindowTitle(notification: NSNotification){
        window?.title = notification.userInfo?["fileName"] as! String
    }

    override func windowDidLoad() {
        super.windowDidLoad()
        let window = self.window!
        let storyboard = self.storyboard!
        
        window.title = "Pixel Artist"
        self.windowTitle(forDocumentDisplayName: "Pixel Artist")
        
        addToolbarColorAccessory()
                 
        self.toolBarController.selectedItemIdentifier = "selectColor"
        self.toolBarController.delegate = self
        
        //notify filename changed
        let nc = NotificationCenter.default
        let fileNameChanged = Notification.Name.init("fileNameChanged")
        nc.addObserver(self,
                       selector: #selector(changeWindowTitle),
                       name: fileNameChanged,
                       object: nil)
        
        let newWindow = Notification.Name.init("newWindow")
        nc.addObserver(self,
                       selector: #selector(createNewWindow),
                       name: newWindow,
                       object: nil)
        
        let palletteNotif = Notification.Name.init("palletteSelected")
        nc.addObserver(self,
                       selector: #selector(palletteUpdate),
                       name: palletteNotif,
                       object: nil)
        
    }
    
    func palletteUpdate(notification: NSNotification){
        self.palletNumber = notification.userInfo?["palletteNumber"] as! Int
       // NSLog(" window controller pallet number \(self.palletNumber)")
    }
    
    func windowDidResize(_ notification: Notification) {
         
//        let vc = self.contentViewController as! ViewController
//        
//        if (vc.fillAreaSelectionView.isHidden == false) && (vc.fillAreaSelectionView.isFillButtonPressed == true){
//            vc.fillAreaSelectionView.isFillButtonPressed = false
//            vc.fillAreaSelectionView.needsDisplay = true
//        }
//        
//        if vc.isSelectionAreaButtonPressed{
//            vc.fillAreaSelectionView.isHidden = false
//        }else{
//            vc.fillAreaSelectionView.isHidden = true
//        }
        
    }
  
    override func awakeFromNib() {
        self.toolBarController.selectedItemIdentifier = "selectColor"
        
    }
    
    //toolbar
    func toolbarSelectableItemIdentifiers(_ toolbar: NSToolbar) -> [String] {
        
        return ["selectColor", "createImage"]
    }
    
 
}
