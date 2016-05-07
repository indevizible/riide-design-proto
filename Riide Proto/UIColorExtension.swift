//
//  UIColorExtension.swift
//  Cerebro
//
//  Created by Thibault Klein on 2/8/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//
import UIKit
import Foundation

public extension UIColor {

     /**
     Create non-autoreleased color with in the given hex string and alpha.

     - parameter hexString: hexString
     - parameter alpha:     alpha

     - returns: Color with the given hex string and alpha.
     */
    public convenience init?(hexString: String, alpha: Float) {
        var hex = hexString

        // Check for hash and remove the hash
        if hex.hasPrefix("#") {
            hex = hex.substringFromIndex(hex.startIndex.advancedBy(1))
        }

        if (hex.rangeOfString("(^[0-9A-Fa-f]{6}$)|(^[0-9A-Fa-f]{3}$)", options: .RegularExpressionSearch) != nil) {

            // Deal with 3 character Hex strings
            if hex.characters.count == 3 {
                let redHex   = hex.substringToIndex(hex.startIndex.advancedBy(1))
                let greenHex = hex.substringWithRange(hex.startIndex.advancedBy(1) ..< hex.startIndex.advancedBy(2))
                let blueHex  = hex.substringFromIndex(hex.startIndex.advancedBy(2))

                hex = redHex + redHex + greenHex + greenHex + blueHex + blueHex
            }

            let redHex = hex.substringToIndex(hex.startIndex.advancedBy(2))
            let greenHex = hex.substringWithRange(hex.startIndex.advancedBy(2) ..< hex.startIndex.advancedBy(4))
            let blueHex = hex.substringWithRange(hex.startIndex.advancedBy(4) ..< hex.startIndex.advancedBy(6))

            var redInt: CUnsignedInt = 0
            var greenInt: CUnsignedInt = 0
            var blueInt: CUnsignedInt = 0

            NSScanner(string: redHex).scanHexInt(&redInt)
            NSScanner(string: greenHex).scanHexInt(&greenInt)
            NSScanner(string: blueHex).scanHexInt(&blueInt)

            self.init(red: CGFloat(redInt) / 255.0, green: CGFloat(greenInt) / 255.0, blue: CGFloat(blueInt) / 255.0, alpha: CGFloat(alpha))
        } else {
            // Note:
            // The swift 1.1 compiler is currently unable to destroy partially initialized classes in all cases,
            // so it disallows formation of a situation where it would have to.  We consider this a bug to be fixed
            // in future releases, not a feature. -- Apple Forum
            self.init()
            return nil
        }
    }

    // Reference: http://stackoverflow.com/questions/2509443/check-if-uicolor-is-dark-or-bright
    /**
     Checks the underlying values of RGB of a color using the formula ((RedVal * 299) + (GreenVal * 587) + (BlueVal * 114)) / 1,000 to get the color brightness.

     - returns: *true* if the value from above formula is greater than 155. *false* is lower than 155.
     */
    func isLightColor() -> Bool {
        // Reference: https://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CGColor/
        let count = CGColorGetNumberOfComponents(CGColor)
        let componentColors: UnsafePointer<CGFloat> = CGColorGetComponents(CGColor)

        var darknessScore: CGFloat = 0

        let maxByte = CGFloat(UInt8.max)
        let middleDarknessScore: CGFloat = 155.0

        if count == 2 {
            let darknessScore1 = (componentColors[0] * maxByte) * 299
            let darknessScore2 = (componentColors[0] * maxByte) * 587
            let darknessScore3 = (componentColors[0] * maxByte) * 114

            darknessScore = (darknessScore1 + darknessScore2 + darknessScore3) / CGFloat(1000.0)
        } else if count == 4 {
            let darknessScore1 = (componentColors[0] * maxByte) * 299
            let darknessScore2 = (componentColors[1] * maxByte) * 587
            let darknessScore3 = (componentColors[2] * maxByte) * 114

            darknessScore = (darknessScore1 + darknessScore2 + darknessScore3) / CGFloat(1000.0)
        }
        // Value of 155 is used to account for non-RGB colors such as whiteColor, grayColor, blackColor. Traditional RGB color value would be 125.
        return darknessScore > middleDarknessScore
    }

}
