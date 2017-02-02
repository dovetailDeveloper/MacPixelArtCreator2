//
//  ColorsTitlebarDelegate.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/6/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//

import Foundation
import Cocoa

protocol ColorsTitlebarDelegate: class{
    
    func selected(controller: colorsTitlebarAccessoryViewController, colorNumber : Int)
    
}
