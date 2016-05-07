//
//  Fonts.swift
//  Saks
//
//  Created by Thibault Klein on 2/11/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//
import UIKit
import Foundation

internal struct Fonts {

    /**
     Maison Book.
     
     - parameter size: The font size.
     
     - returns: The font.
     */
    static func maisonBook(size: CGFloat) -> UIFont {
        return UIFont(name: "MaisonNeue-Book", size: size)!
//        return UIFont(name: "maisonneuebook", size: size)!
    }
    
    /**
     Maison Bold.
     
     - parameter size: The font size.
     
     - returns: The font.
     */
    static func maisonBold(size: CGFloat) -> UIFont {
        return UIFont(name: "MaisonNeue-Bold", size: size)!
        //        return UIFont(name: "maisonneuebold", size: size)!
    }
    
    /**
     Maison Book Italic.
     
     - parameter size: The font size.
     
     - returns: The font.
     */
    static func maisonBookItalic(size: CGFloat) -> UIFont {
        return UIFont(name: "MaisonNeue-BookItalic", size: size)!
        //        return UIFont(name: "maisonneuebookitalic", size: size)!
    }
    
    /**
     Maison Bold Italic.
     
     - parameter size: The font size.
     
     - returns: The font.
     */
    static func maisonBoldItalic(size: CGFloat) -> UIFont {
        return UIFont(name: "MaisonNeue-BoldItalic", size: size)!
        //        return UIFont(name: "maisonneuebolditalic", size: size)!
    }
}
