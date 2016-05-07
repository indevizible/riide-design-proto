//
//  riideColorTheme.swift
//  Riide Proto
//
//  Created by VIRAKRI JINANGKUL on 5/1/16.
//  Copyright © 2016 VIRAKRI JINANGKUL. All rights reserved.
//

import Foundation
import UIKit

internal struct riideColorTheme {
    
    /** primary color.
     
     #000000
     
     */
    let riideBlack:UIColor = UIColor(hexString: "#222222", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    let riideDarkGray:UIColor = UIColor(hexString: "#7E8183", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    let riideGray:UIColor = UIColor(hexString: "#B7B7B7", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    let riideLightGray:UIColor = UIColor(hexString: "#F0F0F0", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    let riideWhisperGray:UIColor = UIColor(hexString: "#F8F8FA", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    let riideWhite:UIColor = UIColor(hexString: "#FFFFFF", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    let riideBlue:UIColor = UIColor(hexString: "#008CBA", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    let riideGreen:UIColor = UIColor(hexString: "#C5D922", alpha: 1.0)!
    
    
    /** primary color.
     
     #000000
     
     */
    let riideOrange:UIColor = UIColor(hexString: "#D9A52E", alpha: 1.0)!
    
    /** primary color.
     
     #000000
     
     */
    let riideRed:UIColor = UIColor(hexString: "#B54A2F", alpha: 1.0)!
    
    let riideDisableAlpha:CGFloat = 0.15
    
    static func riideInkPrimaryColor() -> UIColor {
        switch riideCurrentStyle {
        case .darkContent:
            return riideColorTheme.init().riideBlack
        case .lightContent:
            return riideColorTheme.init().riideWhite
        }
    }
    
    static func riideInkSecondaryColor() -> UIColor {
        switch riideCurrentStyle {
        case .darkContent:
            return riideColorTheme.init().riideDarkGray
        case .lightContent:
            return riideColorTheme.init().riideLightGray
        }
    }
    
    
}