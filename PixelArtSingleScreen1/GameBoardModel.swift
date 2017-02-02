//
//  GameBoard.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/4/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Cocoa

struct  BoardColors {
    enum ColorPallette: String {
        case one
        case two
        case three
        case four
    }
    
    var pallette : ColorPallette
    var colors:[NSColor]
    
}



class GameBoardModel: NSObject {
    
    let rows = 200
    let columns = 200
    var boardColors  = [BoardColors]()
    //var boardSpaces  = [[Int]](repeating:0, count:200)
    var boardSpaces = Array(repeating: Array(repeating: 0, count: 200), count:200)
    
    override init(){
        
        let colors = Helpers.ColorsForButtons.colors
        boardColors.append(BoardColors(pallette: .four , colors: colors))
        
        
    }
    
    

}
