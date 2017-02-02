//
//  PixelArtGame.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/4/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

class PixelArtGameModel: NSObject {
    
    let gameBoardModel : GameBoardModel!
    
    override init(){
        gameBoardModel = GameBoardModel()
    }
    
}
