//
//  AppDelegate.swift
//  PixelArtSingleScreen1
//
//  Created by Robert Steven Schwab on 11/11/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate , NSWindowDelegate{

    var gridDataArray:[[[String:Int]]]?
    var fileWithExtensionPath = ""

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    @IBAction func undoLastAction(_ sender: AnyObject) {
        if let mainWindow =  NSApplication.shared().mainWindow{
            let viewController = mainWindow.contentViewController as! ViewController
            viewController.undoLastColorAdded()
           
        }

        
    }
    
    
    func notifyFileNameChanged(fileName: String){
        let gridSelected = Notification.Name.init("fileNameChanged")
        let nc = NotificationCenter.default
        let data = ["fileName":self.fileWithExtensionPath]
        nc.post(name: gridSelected, object:nil , userInfo: data)
    }
    
    
    
    func saveAsArtWork(){
        //get data gridDataArray
        if let mainWindow =  NSApplication.shared().mainWindow{
            let viewController = mainWindow.contentViewController as! ViewController
            gridDataArray = viewController.gameBoardView.gridDataArray
            
            
        }
        
        //open panel to save location
        let savePanel = NSSavePanel()
        
        savePanel.begin { (result: Int) -> Void in
            if result == NSFileHandlingPanelOKButton {
                if let exportedFileURL = savePanel.url{
                   let fileWithExtension = exportedFileURL.appendingPathExtension("pixel")
                    
                    if let data = self.gridDataArray{
                        let colorNumber = data[0][0]["colorNumber"]
                        self.fileWithExtensionPath = fileWithExtension.path
                        let result = NSKeyedArchiver.archiveRootObject(data, toFile: fileWithExtension.path)
                        
                        self.notifyFileNameChanged(fileName: self.fileWithExtensionPath)
                    }
                }
            }
        }
    }
    
    func saveArtWork(){
        //get data gridDataArray
        if let mainWindow =  NSApplication.shared().mainWindow{
            let viewController = mainWindow.contentViewController as! ViewController
            gridDataArray = viewController.gameBoardView.gridDataArray
            
        }
        
         if let data = self.gridDataArray{
             NSKeyedArchiver.archiveRootObject(data, toFile: self.fileWithExtensionPath)
         }
        
    }
    
    @IBAction func saveAsDocument(_ sender: AnyObject) {
        self.saveAsArtWork()
    }
    

     @IBAction func saveDocument(_ sender: AnyObject) {
        if self.fileWithExtensionPath == ""{
            self.saveAsArtWork()
        }else{
            self.saveArtWork()
        }
        
     }
    
    @IBAction func openDocument(_ sender: AnyObject) {
        var viewController: ViewController?
        if let mainWindow =  NSApplication.shared().mainWindow{
            viewController = mainWindow.contentViewController as! ViewController
            gridDataArray = viewController?.gameBoardView.gridDataArray
            
        }
        
        let openPanel = NSOpenPanel()
        
        openPanel.begin { (result: Int) in
            if result == NSFileHandlingPanelOKButton{
                if let fileURL = openPanel.url{
                    if let gridData = NSKeyedUnarchiver.unarchiveObject(withFile: fileURL.path){
                        
                          self.gridDataArray = gridData as! [[[String:Int]]]
                          viewController?.gameBoardView.gridDataArray = self.gridDataArray!
                          viewController?.gameBoardView.updateColorOfGridCells()
                    }
                }
            }
        }
        
    }
}

