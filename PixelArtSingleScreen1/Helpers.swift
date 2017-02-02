//
//  Helpers.swift
//  PixelArt3
//
//  Created by Robert Steven Schwab on 11/5/16.
//  Copyright © 2016 Robert Steven Schwab. All rights reserved.
//
//ColorsForButtons
//ColorsForButtons2






import Cocoa

class Helpers{
   struct  ColorsForButtons{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color3  = NSColor.init(red: 157/255, green: 157/255, blue: 157/255, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        static let color4  = NSColor.init(red: 190/255, green: 38/255, blue: 51/255, alpha: 1)
        static let color5  = NSColor.init(red: 224/255, green: 111/255, blue: 139/255, alpha: 1)
        static let color6  = NSColor.init(red: 164/255, green: 100/255, blue: 34/255, alpha: 1)
        static let color7  = NSColor.init(red: 235/255, green: 137/255, blue: 49/255, alpha: 1)
        static let color8 = NSColor.init(red: 247/255, green: 226/255, blue: 107/255, alpha: 1)
        static let color9 = NSColor.init(red: 47/255, green: 72/255, blue: 78/255, alpha: 1)
        static let color10 = NSColor.init(red: 68/255, green: 137/255, blue: 26/255, alpha: 1)
        static let color11 = NSColor.init(red: 163/255, green: 206/255, blue: 39/255, alpha: 1)
        static let color12 = NSColor.init(red: 0, green: 87/255, blue: 132/255, alpha: 1)
        static let color13 = NSColor.init(red: 87/255, green: 38/255, blue: 0 , alpha: 1)
        static let color14 = NSColor.init(red: 47/255, green: 47/255, blue: 139/255, alpha: 1)
        static let color15 = NSColor.init(red: 206/255, green: 163/255, blue: 132/255, alpha: 1)
        static let count = 12
    
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    rgb(2,100,117)    rgb(1,62,84)    rgb(0,25,51)
//    rgb(19,96,85)    rgb(39,168,119)    rgb(50,188,120)
//    rgb(61,209,121)    rgb(156,196,81)    rgb(251,184,41)
//    rgb(222,173,60)    rgb(194,163,79)    rgb(224,207,127)
//    rgb(254,251,175)
    
    struct  ColorsForButtons2{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        static let color3  = NSColor.init(red: 2/255, green: 100/255, blue: 117/255, alpha: 1)
        static let color4  = NSColor.init(red: 1/255, green: 62/255, blue: 84/255, alpha: 1)
        static let color5  = NSColor.init(red: 0, green: 25/255, blue: 51/255, alpha: 1)
        static let color6  = NSColor.init(red: 19/255, green: 96/255, blue: 85/255, alpha: 1)
        static let color7  = NSColor.init(red: 39/255, green: 168/255, blue: 119/255, alpha: 1)
        static let color8  = NSColor.init(red: 50/255, green: 188/255, blue: 120/255, alpha: 1)
        static let color9  = NSColor.init(red: 61/255, green: 209/255, blue: 121/255, alpha: 1)
        static let color10  = NSColor.init(red: 156/255, green: 196/255, blue: 81/255, alpha: 1)
        static let color11 = NSColor.init(red: 251/255, green: 184/255, blue: 41/255, alpha: 1)
        static let color12 = NSColor.init(red: 222/255, green: 173/255, blue: 60/255, alpha: 1)
        static let color13 = NSColor.init(red: 194/255, green: 163/255, blue: 79/255, alpha: 1)
        static let color14 = NSColor.init(red: 224/255, green: 207/255, blue: 127/255, alpha: 1)
        static let color15 = NSColor.init(red: 254/255, green: 251/255, blue: 175/255, alpha: 1)
        
        static let count = 15
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    #2
//    rgb(17,1,65)    rgb(113,1,98)    rgb(161,42,94)
//    rgb(237,3,69)    rgb(239,106,50)    rgb(251,191,69)
//    rgb(170,217,98)    rgb(3,195,131)    rgb(1,115,81)
//    rgb(1,84,90)    rgb(38,41,74)    rgb(26,19,52)
    
    struct  ColorsForButtons3{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        static let color3  = NSColor.init(red: 90/255, green: 91/255, blue: 65/255, alpha: 1)
        static let color4  = NSColor.init(red: 113/255, green: 1/255, blue: 98/255, alpha: 1)
        static let color5  = NSColor.init(red: 161/255, green: 42/255, blue: 94/255, alpha: 1)
        static let color6  = NSColor.init(red: 237/255, green: 3/255, blue: 69/255, alpha: 1)
        static let color7  = NSColor.init(red: 239/255, green: 106/255, blue: 50/255, alpha: 1)
        static let color8 = NSColor.init(red: 251/255, green: 191/255, blue: 69/255, alpha: 1)
        static let color9 = NSColor.init(red: 170/255, green: 217/255, blue: 98/255, alpha: 1)
        static let color10 = NSColor.init(red: 3/255, green: 195/255, blue: 131/255, alpha: 1)
        static let color11 = NSColor.init(red: 1/255, green: 115/255, blue: 81/255, alpha: 1)
        static let color12 = NSColor.init(red: 1, green: 84/255, blue: 90/255, alpha: 1)
        static let color13 = NSColor.init(red: 38/255, green: 341/255, blue: 74/255, alpha: 1)
        static let color14  = NSColor.init(red: 26/255, green: 19/255, blue: 52/255, alpha: 1)
        static let color15  = NSColor.init(red: 206/255, green: 120/255, blue: 20/255, alpha: 1)
        static let count = 14
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    special:
//    rgb(158,1,66)    rgb(213,62,79)    rgb(244,109,67)
//    rgb(253,174,97)    rgb(254,224,139)    rgb(230,245,152)
//    rgb(171,221,164)    rgb(102,194,165)    rgb(50,136,189)
//    rgb(94,79,162)
    
    struct  ColorsForButtons4{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        static let color3  = NSColor.init(red: 158/255, green: 1/255, blue: 66/255, alpha: 1)
        static let color4  = NSColor.init(red: 213/255, green: 62/255, blue: 79/255, alpha: 1)
        static let color5  = NSColor.init(red: 244/255, green: 109/255, blue: 67/255, alpha: 1)
        static let color6  = NSColor.init(red: 253/255, green: 174/255, blue: 97/255, alpha: 1)
        static let color7  = NSColor.init(red: 254/255, green: 224/255, blue: 139/255, alpha: 1)
        static let color8 = NSColor.init(red: 230/255, green: 245/255, blue: 152/255, alpha: 1)
        static let color9 = NSColor.init(red: 171/255, green: 221/255, blue: 164/255, alpha: 1)
        static let color10 = NSColor.init(red: 102/255, green: 194/255, blue: 165/255, alpha: 1)
        static let color11 = NSColor.init(red: 50/255, green: 136/255, blue: 189/255, alpha: 1)
        static let color12 = NSColor.init(red: 171/255, green: 79/255, blue: 163/255, alpha: 1)
        static let color13 = NSColor.init(red: 171/255, green: 171/255, blue: 163/255, alpha: 1)
        static let color14 = NSColor.init(red: 171/255, green: 171/255, blue: 120/255, alpha: 1)
        static let color15 = NSColor.init(red: 120/255, green: 171/255, blue: 100/255, alpha: 1)
        static let count = 15
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
 
  
 
    
//    flat design:
//    rgb(255,255,255)    rgb(225,225,235)    rgb(17,18,18)
//    rgb(20,0,85)    rgb(0,85,190)    rgb(0,135,240)
//    rgb(0,190,240)    rgb(38,227,222)    rgb(10,185,190)
//    rgb(0,160,177)    rgb(0,138,22)    rgb(0,155,0)
//    rgb(140,190,40)    rgb(255,215,0)    rgb(255,170,3)
//    rgb(245,125,65)    rgb(220,85,45)    rgb(250,80,35)
    
//    rgb(215,40,15)    rgb(205,0,110)    rgb(185,0,170)
//    rgb(100,30,100)    rgb(70,40,125)    rgb(105,50,190)
//    rgb(80,20,200)
    struct  ColorsForButtons8{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 70/255, green: 40/255, blue: 110/255, alpha: 1)
        static let color4  = NSColor.init(red: 100/255, green: 30/255, blue: 100/255, alpha: 1)
        static let color5  = NSColor.init(red: 60/225, green: 185/255, blue: 190/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 0, green: 160/255, blue: 177/255, alpha: 1)
        static let color7  = NSColor.init(red: 0, green: 138/255, blue: 22/255, alpha: 1)
        static let color8 = NSColor.init(red: 0, green: 155/255, blue: 0, alpha: 1)
        
        static let color9 =  NSColor.init(red: 140/255, green: 190/255, blue: 40/255, alpha: 1)
        static let color10 = NSColor.init(red: 1, green: 215/255, blue: 0, alpha: 1)
        static let color11 = NSColor.init(red: 1, green: 170/255, blue: 3/255, alpha: 1)
        
        static let color12 = NSColor.init(red: 245/255, green: 125/255, blue: 65/255, alpha: 1)
        static let color13 = NSColor.init(red: 105/255, green: 50/255, blue: 190/255, alpha: 1)
        static let color14 = NSColor.init(red: 250/255, green: 60/255, blue: 35/255, alpha: 1)
        
        static let color15 = NSColor.init(red: 185/255, green: 0, blue: 170/255, alpha: 1)
        
        
        static let count = 12
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }

//    full range:
//    rgb(138,99,60)    rgb(241,165,199)    rgb(223,93,142)
//    rgb(219,66,66)    rgb(233,131,80)    rgb(253,222,108)
//    rgb(139,187,66)    rgb(44,179,119)    rgb(50,141,189)
//    rgb(65,80,173)    rgb(88,59,151)    rgb(157,63,163)
//    rgb(135,133,142)    rgb(231,220,220)    rgb(48,45,56)
    struct  ColorsForButtons9{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        static let color3  = NSColor.init(red: 138/255, green: 99/255, blue: 60/255, alpha: 1)
        static let color4  = NSColor.init(red: 241/255, green: 165/255, blue: 199/255, alpha: 1)
        static let color5  = NSColor.init(red: 223/255, green: 93/255, blue: 142/255, alpha: 1)
        static let color6  = NSColor.init(red: 219/255, green: 66/255, blue: 66/255, alpha: 1)
        static let color7  = NSColor.init(red: 233/255, green: 131/255, blue: 80/255, alpha: 1)
        static let color8  = NSColor.init(red: 253/255, green: 222/255, blue: 108/255, alpha: 1)
        static let color9  = NSColor.init(red: 139/255, green: 187/255, blue: 66/255, alpha: 1)
        static let color10 = NSColor.init(red: 44/255, green: 179/255, blue: 119/255, alpha: 1)
        static let color11 = NSColor.init(red: 50/255, green: 141/255, blue: 189/255, alpha: 1)
        static let color12 = NSColor.init(red: 65/255, green: 80/255, blue: 173/255, alpha: 1)
        static let color13 = NSColor.init(red: 88/255, green: 59/255, blue: 151/255, alpha: 1)
        static let color14  = NSColor.init(red: 157/255, green: 63/255, blue: 163/255, alpha: 1)
        static let color15  = NSColor.init(red: 135/255, green: 133/255, blue: 142/255, alpha: 1)
        static let color16  = NSColor.init(red: 231/255, green: 220/255, blue: 220/255, alpha: 1)
        static let color17  = NSColor.init(red: 48/255, green: 45/255, blue: 56/255, alpha: 1)
        
        static let count = 17
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    distant:
//    rgb(85,170,238)    rgb(170,187,102)    rgb(255,111,15)
//    rgb(255,229,33)    rgb(178,175,170)    rgb(34,153,238)
//    rgb(255,0,76)    rgb(84,238,102)    rgb(247,197,12)
//    rgb(17,85,136)    rgb(153,15,22)    rgb(68,170,0)
//    rgb(152,134,15)
    struct  ColorsForButtons10{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 85/255, green: 170/255, blue: 238/255, alpha: 1)
        static let color4  = NSColor.init(red: 170/255, green: 187/255, blue: 102/255, alpha: 1)
        static let color5  = NSColor.init(red: 255/255, green: 111/255, blue: 15/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 1, green: 229/255, blue: 33/255, alpha: 1)
        static let color7  = NSColor.init(red: 178/255, green: 175/255, blue: 170/255, alpha: 1)
        static let color8  = NSColor.init(red: 344/255, green: 153/255, blue: 238/255, alpha: 1)
        
        
        static let color9  = NSColor.init(red: 1, green: 0, blue: 76/255, alpha: 1)
        static let color10  = NSColor.init(red: 84/255, green: 238/255, blue: 102/255, alpha: 1)
        static let color11  = NSColor.init(red: 247/255, green: 197/255, blue: 12/255, alpha: 1)
        
        static let color12  = NSColor.init(red: 17/255, green: 85/255, blue: 136/255, alpha: 1)
        static let color13 = NSColor.init(red: 153/255, green: 15/255, blue: 22/255, alpha: 1)
        static let color14 = NSColor.init(red: 68/255, green: 170/255, blue: 0, alpha: 1)
        
        static let color15 = NSColor.init(red: 152/255, green:134/255, blue: 15/255, alpha: 1)
        
        static let count = 15
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    pastels
//    rgb(198,175,122)    rgb(214,194,146)    rgb(242,227,176)
//    rgb(243,215,140)    rgb(254,204,119)    rgb(253,190,67)
//    rgb(241,181,154)    rgb(246,200,171)    rgb(252,247,246)
//    rgb(241,243,219)    rgb(222,225,176)    rgb(207,218,153)
//    rgb(200,199,131)    rgb(189,181,116)

    struct  ColorsForButtons11{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 198/255, green: 175/255, blue: 122/255, alpha: 1)
        static let color4  = NSColor.init(red: 214/255, green: 194/255, blue: 146/255, alpha: 1)
        static let color5  = NSColor.init(red: 242/255, green: 227/255, blue: 176/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 243/255, green: 215/255, blue: 140/255, alpha: 1)
        static let color7  = NSColor.init(red: 254/255, green: 204/255, blue: 119/255, alpha: 1)
        static let color8  = NSColor.init(red: 253/255, green: 190/255, blue: 67/255, alpha: 1)
        
        static let color9  = NSColor.init(red: 241/255, green: 181/255, blue: 154/255, alpha: 1)
        static let color10 = NSColor.init(red: 246/255, green: 200/255, blue: 171/255, alpha: 1)
        static let color11 = NSColor.init(red: 252/255, green: 247/255, blue: 246/255, alpha: 1)
        
        static let color12  = NSColor.init(red: 241/255, green: 243/255, blue: 219/255, alpha: 1)
        static let color13 = NSColor.init(red: 222/255, green: 225/255, blue: 176/255, alpha: 1)
        static let color14 = NSColor.init(red: 207/255, green: 218/255, blue: 152/255, alpha: 1)
        
        static let color15 = NSColor.init(red: 200/255, green: 87/255, blue: 132/255, alpha: 1)
        static let color16 = NSColor.init(red: 27/255,  green: 38/255, blue: 50/255, alpha: 1)
        
        static let count = 16
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    harsh:
//    rgb(255,255,255)    rgb(0,0,0)    rgb(198,248,255)
//    rgb(12,35,104)    rgb(9,17,67)    rgb(38,41,74)
//    rgb(1,84,90)    rgb(1,115,81)    rgb(3,195,131)
//    rgb(170,217,98)    rgb(251,191,69)    rgb(245,218,166)
//    rgb(239,106,50)    rgb(113,39,8)    rgb(237,3,69)
//    rgb(161,42,94)    rgb(113,1,98)    rgb(17,1,65)
    struct  ColorsForButtons12{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 12/255, green: 35/255, blue: 104/255, alpha: 1)
        static let color4  = NSColor.init(red: 9/255, green: 17/255, blue: 67/255, alpha: 1)
        static let color5  = NSColor.init(red: 38/255, green: 41/255, blue: 74/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 1/255, green: 84/255, blue: 90/255, alpha: 1)
        static let color7  = NSColor.init(red: 1/255, green: 115/255, blue: 81/255, alpha: 1)
        static let color8  = NSColor.init(red: 3/255, green: 195/255, blue: 131/255, alpha: 1)
        
        static let color9  = NSColor.init(red: 170/255, green: 217/255, blue: 98/255, alpha: 1)
        static let color10 = NSColor.init(red: 251/255, green: 191/255, blue: 69/255, alpha: 1)
        static let color11 = NSColor.init(red: 245/255, green: 218/255, blue: 166/255, alpha: 1)
        
        static let color12 = NSColor.init(red: 239/255, green: 106/255, blue: 50/255, alpha: 1)
        static let color13 = NSColor.init(red: 113/255, green: 39/255, blue: 8/255, alpha: 1)
        static let color14  = NSColor.init(red: 237/255, green: 3/255, blue: 69/255, alpha: 1)
        
        static let color15  = NSColor.init(red: 161/255, green: 42/255, blue: 94/255, alpha: 1)
        static let color16  = NSColor.init(red: 113/255, green: 1/255, blue: 98/255, alpha: 1)
        static let color17  = NSColor.init(red: 17/255, green: 1/255, blue: 65/255, alpha: 1)
        
        static let count = 17
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    home:
//    rgb(163,127,91)    rgb(182,150,113)    rgb(238,221,170)
//    rgb(186,196,185)    rgb(197,206,196)    rgb(222,227,221)
//    rgb(247,247,247)    rgb(255,255,209)    rgb(255,238,170)
//    rgb(255,255,170)    rgb(255,255,187)    rgb(179,182,133)
//    rgb(200,203,148)    rgb(214,216,176)
    struct  ColorsForButtons13{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 163/255, green: 127/255, blue: 91/255, alpha: 1)
        static let color4  = NSColor.init(red: 182/255, green: 150/255, blue: 113/255, alpha: 1)
        static let color5  = NSColor.init(red: 238/255, green: 221/255, blue: 170/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 186/255, green: 196/255, blue: 185/255, alpha: 1)
        static let color7  = NSColor.init(red: 197/255, green: 206/255, blue: 196/255, alpha: 1)
        static let color8  = NSColor.init(red: 222/255, green: 227/255, blue: 221/255, alpha: 1)
        
        static let color9  = NSColor.init(red: 255/255, green: 255/255, blue: 170/255, alpha: 1)
        static let color10 = NSColor.init(red: 255/255, green: 255/255, blue: 187/255, alpha: 1)
        static let color11 = NSColor.init(red: 179/255, green: 182/255, blue: 133/255, alpha: 1)
        
        static let color12 = NSColor.init(red: 200/255, green: 203/255, blue: 148/255, alpha: 1)
        static let color13 = NSColor.init(red: 214/255, green: 203/255, blue: 50/255, alpha: 1)
        
        static let color14 = NSColor.init(red: 148/255, green: 203/255, blue: 200/255, alpha: 1)
        static let color15 = NSColor.init(red: 214/255, green: 50/255, blue: 203/255, alpha: 1)
        
        
        static let count = 13
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }

//    rainbow:
//    rgb(154,108,248)    rgb(120,93,247)    rgb(120,115,247)
//    rgb(120,132,247)    rgb(122,153,234)    rgb(122,165,234)
//    rgb(122,176,234)    rgb(122,192,234)    rgb(122,198,234)
//    rgb(122,215,234)    rgb(122,232,234)    rgb(122,234,211)
//    rgb(122,234,186)    rgb(116,240,172)    rgb(104,252,141)
//    rgb(130,252,104)    rgb(187,252,104)    rgb(218,253,103)
//    rgb(237,253,103)    rgb(244,241,112)    rgb(255,229,101)
//    rgb(255,218,101)    rgb(255,200,101)    rgb(255,195,101)
//    rgb(255,186,101)    rgb(255,177,101)    rgb(255,162,101)
//    rgb(255,145,101)    rgb(255,118,101)    rgb(255,107,108)
    struct  ColorsForButtons14{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color3  = NSColor.init(red: 157/255, green: 157/255, blue: 157/255, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        static let color4  = NSColor.init(red: 190/255, green: 38/255, blue: 51/255, alpha: 1)
        static let color5  = NSColor.init(red: 224/255, green: 111/255, blue: 139/255, alpha: 1)
        static let color6  = NSColor.init(red: 164/255, green: 100/255, blue: 34/255, alpha: 1)
        static let color7  = NSColor.init(red: 235/255, green: 137/255, blue: 49/255, alpha: 1)
        static let color8  = NSColor.init(red: 247/255, green: 226/255, blue: 107/255, alpha: 1)
        static let color9  = NSColor.init(red: 47/255, green: 72/255, blue: 78/255, alpha: 1)
        static let color10 = NSColor.init(red: 68/255, green: 137/255, blue: 26/255, alpha: 1)
        static let color11 = NSColor.init(red: 163/255, green: 206/255, blue: 39/255, alpha: 1)
        static let color12 = NSColor.init(red: 0, green: 87/255, blue: 132/255, alpha: 1)
        static let color13 = NSColor.init(red: 38/255, green: 190/255, blue: 51/255, alpha: 1)
        static let color14 = NSColor.init(red: 38/255, green: 72/255, blue: 34/255, alpha: 1)
        static let color15 = NSColor.init(red: 235/255, green: 87/255, blue: 47/255, alpha: 1)
        
        
        static let count = 12
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }

//    neutrals:
//    rgb(177,130,93)    rgb(221,153,102)    rgb(224,187,127)
//    rgb(238,187,119)    rgb(255,239,188)    rgb(214,229,217)
//    rgb(153,167,125)    rgb(135,139,101)    rgb(113,102,54)
//    rgb(54,72,34)
    struct  ColorsForButtons15{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 177/255, green: 130/255, blue: 93/255, alpha: 1)
        static let color4  = NSColor.init(red: 221/255, green: 153/255, blue: 102/255, alpha: 1)
        static let color5  = NSColor.init(red: 224/255, green: 187/255, blue: 127/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 238/255, green: 187/255, blue: 119/255, alpha: 1)
        static let color7  = NSColor.init(red: 255/255, green: 239/255, blue: 188/255, alpha: 1)
        static let color8  = NSColor.init(red: 214/255, green: 229/255, blue: 217/255, alpha: 1)
        
        static let color9  = NSColor.init(red: 153/255, green: 167/255, blue: 125/255, alpha: 1)
        static let color10 = NSColor.init(red: 135/255, green: 139/255, blue: 101/255, alpha: 1)
        static let color11 = NSColor.init(red: 113/255, green: 102/255, blue: 54/255, alpha: 1)
        
        static let color12 = NSColor.init(red: 54/255, green: 72/255, blue: 34/255, alpha: 1)
        static let color13 = NSColor.init(red: 54/255, green: 100/255, blue: 34/255, alpha: 1)
        static let color14 = NSColor.init(red: 54/255, green: 34/255, blue: 74/255, alpha: 1)
        
        static let color15 = NSColor.init(red: 74/255, green: 34/255, blue: 34/255, alpha: 1)
        
        
        static let count = 12
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }

//    spring:
//    rgb(116,44,53)    rgb(165,23,68)    rgb(219,10,87)
//    rgb(216,74,105)    rgb(208,93,154)    rgb(228,67,94)
//    rgb(234,107,128)    rgb(244,154,194)    rgb(57,179,197)
//    rgb(0,219,219)    rgb(118,212,226)    rgb(182,233,224)
//    rgb(237,183,2)    rgb(248,211,87)    rgb(231,112,13)
    struct  ColorsForButtons16{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 116/255, green: 44/255, blue: 53/255, alpha: 1)
        static let color4  = NSColor.init(red: 165/255, green: 23/255, blue: 68/255, alpha: 1)
        static let color5  = NSColor.init(red: 219/255, green: 10/255, blue: 87/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 216/255, green: 74/255, blue: 105/255, alpha: 1)
        static let color7  = NSColor.init(red: 208/255, green: 93/255, blue: 154/255, alpha: 1)
        static let color8  = NSColor.init(red: 228/255, green: 67/255, blue: 94/255, alpha: 1)
        
        static let color9  = NSColor.init(red: 234/255, green: 107/255, blue: 128/255, alpha: 1)
        static let color10 = NSColor.init(red: 244/255, green: 154/255, blue: 194/255, alpha: 1)
        static let color11 = NSColor.init(red: 57/255, green: 179/255, blue: 197/255, alpha: 1)
        
        static let color12 = NSColor.init(red: 0, green: 87/255, blue: 132/255, alpha: 1)
        static let color13 = NSColor.init(red: 27/255, green: 38/255, blue: 50/255, alpha: 1)
        static let color14  = NSColor.init(red: 73/255, green: 60/255, blue: 43/255, alpha: 1)
        
        static let color15  = NSColor.init(red: 237/255, green: 183/255, blue: 2/255, alpha: 1)
        static let color16  = NSColor.init(red: 248/255, green: 211/255, blue: 87/255, alpha: 1)
        static let color17  = NSColor.init(red: 231/255, green: 112/255, blue: 13/255, alpha: 1)
        
        static let count = 17
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    

//    brownish:
//    rgb(235,235,235)    rgb(252,237,206)    rgb(252,218,155)
//    rgb(244,207,127)    rgb(204,145,83)    rgb(186,123,69)
//    rgb(165,117,71)    rgb(188,134,95)    rgb(228,157,101)
//    rgb(255,195,122)

    struct  ColorsForButtons17{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 235/255, green: 252/255, blue: 237/255, alpha: 1)
        static let color4  = NSColor.init(red: 252/255, green: 237/255, blue: 206/255, alpha: 1)
        static let color5  = NSColor.init(red: 252/255, green: 218/255, blue: 155/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 244/255, green: 207/255, blue: 127/255, alpha: 1)
        static let color7  = NSColor.init(red: 204/255, green: 145/255, blue: 83/255, alpha: 1)
        static let color8  = NSColor.init(red: 186/255, green: 123/255, blue: 69/255, alpha: 1)
        
        static let color9  = NSColor.init(red: 165/255, green: 117/255, blue: 71/255, alpha: 1)
        static let color10 = NSColor.init(red: 188/255, green: 134/255, blue: 95/255, alpha: 1)
        static let color11 = NSColor.init(red: 228/255, green: 157/255, blue: 101/255, alpha: 1)
        
        static let color12 = NSColor.init(red: 1, green: 195/255, blue: 228/255, alpha: 1)
         static let color13 = NSColor.init(red: 218/255, green: 195/255, blue: 228/255, alpha: 1)
         static let color14 = NSColor.init(red: 1, green: 195/255, blue: 188/255, alpha: 1)
        
         static let color15 = NSColor.init(red: 1, green: 155/255, blue: 228/255, alpha: 1)
        
        static let count = 12
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    beach pastel:
//    rgb(215,200,168)    rgb(215,209,168)    rgb(211,215,168)
//    rgb(188,215,168)    rgb(168,215,190)    rgb(152,178,194)
//    rgb(134,141,172)    rgb(148,134,172)    rgb(172,134,172)
//    rgb(172,134,144)    rgb(172,140,134)    rgb(183,162,143)

    struct  ColorsForButtons18{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 215/255, green: 200/255, blue: 168/255, alpha: 1)
        static let color4  = NSColor.init(red: 215/255, green: 209/255, blue: 168/255, alpha: 1)
        static let color5  = NSColor.init(red: 211/255, green: 215/255, blue: 168/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 188/255, green: 215/255, blue: 168/255, alpha: 1)
        static let color7  = NSColor.init(red: 168/255, green: 215/255, blue: 190/255, alpha: 1)
        static let color8  = NSColor.init(red: 152/255, green: 178/255, blue: 194/255, alpha: 1)
        
        static let color9  = NSColor.init(red: 134/255, green: 141/255, blue: 172/255, alpha: 1)
        static let color10 = NSColor.init(red: 148/255, green: 134/255, blue: 172/255, alpha: 1)
        static let color11 = NSColor.init(red: 172/255, green: 134/255, blue: 172/255, alpha: 1)
        
        static let color12 = NSColor.init(red: 172/255, green: 134/255, blue: 144/255, alpha: 1)
        static let color13 = NSColor.init(red: 172/255, green: 140/255, blue: 134/255, alpha: 1)
        static let color14  = NSColor.init(red: 183/255, green: 162/255, blue: 143/255, alpha: 1)
        
        static let color15  = NSColor.init(red: 162/255, green: 183/255, blue: 143/255, alpha: 1)
        
        static let count = 14
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }
    
//    tropical:
//    rgb(10,41,3)    rgb(1,82,0)    rgb(20,128,16)
//    rgb(175,190,43)    rgb(255,124,45)    rgb(220,42,22)
//    rgb(167,64,23)    rgb(125,78,100)    rgb(122,82,237)
//    rgb(164,191,255)    rgb(153,254,201)    rgb(64,177,0)
//    rgb(92,128,26)
    struct  ColorsForButtons19{
        static let color1  = NSColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        static let color2  = NSColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        
        static let color3  = NSColor.init(red: 10/255, green:41/255, blue: 3/255, alpha: 1)
        static let color4  = NSColor.init(red: 1/255, green: 82/255, blue: 0, alpha: 1)
        static let color5  = NSColor.init(red: 20/255, green: 128/255, blue: 16/255, alpha: 1)
        
        static let color6  = NSColor.init(red: 175/255, green: 190/255, blue: 43/255, alpha: 1)
        static let color7  = NSColor.init(red: 1, green: 124/255, blue: 45/255, alpha: 1)
        static let color8  = NSColor.init(red: 220/255, green: 42/255, blue: 22/255, alpha: 1)
        
        static let color9  = NSColor.init(red: 167/255, green: 64/255, blue: 23/255, alpha: 1)
        static let color10 = NSColor.init(red: 125/255, green: 78/255, blue: 100/255, alpha: 1)
        static let color11 = NSColor.init(red: 122/255, green: 82/255, blue: 237/255, alpha: 1)
        
        static let color12 = NSColor.init(red: 164/255, green: 191/255, blue: 1, alpha: 1)
        static let color13 = NSColor.init(red: 27/255, green: 38/255, blue: 50/255, alpha: 1)
        static let color14 = NSColor.init(red: 73/255, green: 60/255, blue: 43/255, alpha: 1)
        
        static let color15  = NSColor.init(red: 92/255, green: 128/255, blue: 26/255, alpha: 1)
        
        static let count = 15
        
        static var colors : [NSColor]{
            get{
                return [color1,color2,color3,color4,color5,
                        color6,color7,color8,color9,color10,
                        color11,color12,color13,color14,color15
                ]
            }
        }
    }


}


