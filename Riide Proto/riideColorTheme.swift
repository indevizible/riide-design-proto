//
//  riideColorTheme.swift
//  Riide Proto
//
//  Created by VIRAKRI JINANGKUL on 5/1/16.
//  Copyright © 2016 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

internal struct riideColorTheme {
    
    /** primary color.
     
     #000000
     
     */
    static let Black = UIColor(hexString: "#222222", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    static let DarkGray = UIColor(hexString: "#7E8183", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    static let Gray = UIColor(hexString: "#B7B7B7", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    static let LightGray = UIColor(hexString: "#F0F0F0", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    static let WhisperGray = UIColor(hexString: "#F8F8FA", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    static let White = UIColor(hexString: "#FFFFFF", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    static let Blue = UIColor(hexString: "#008CBA", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    static let Green = UIColor(hexString: "#C5D922", alpha: 1.0)!
    
    
    /** primary color.
     
     #000000
     
     */
    static let Orange = UIColor(hexString: "#D9A52E", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    static let Red = UIColor(hexString: "#B54A2F", alpha: 1.0)!
    
    static let DisableAlpha: CGFloat = 0.15
    
    static func riideInkPrimaryColor() -> UIColor {
        switch riideCurrentStyle {
        case .darkContent:
            return Black
        case .lightContent:
            return White
        }
    }
    
    static func riideInkSecondaryColor() -> UIColor {
        switch riideCurrentStyle {
        case .darkContent:
            return DarkGray
        case .lightContent:
            return LightGray
        }
    }
}
