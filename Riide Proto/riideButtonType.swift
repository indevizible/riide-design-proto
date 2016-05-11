//
//  SaksButtonType.swift
//  Saks
//
//  Created by Michael Campbell on 2/15/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

/**
 A Saks Button Type.

 - DarkButton:  Uses the Dark Button Design.
 - LightButton: Uses the Light Button Design.
 */
import UIKit

internal enum riideButtonType {
    case DarkButton
    case OutlineDarkButton
    case LightButton
    case OutlineLightButton
    case DarkTextButton
    case LightTextButton

    static let fontTheme = riideFontTheme.self
    
    static let colorTheme = riideColorTheme.self

    /**
     The background color for a given Saks Button.

     - returns: The color to be used for the Saks Button Background.
     */
    func backgroundColor(controlState: UIControlState) -> UIColor {
        switch controlState {
        case UIControlState.Disabled:
            return disabledBackgroundColor()
        case UIControlState.Highlighted:
            return disabledBackgroundColor()
        case UIControlState.Normal:
            return normalBackgroundColor()
        default:
            return normalBackgroundColor()
        }
    }

    /**
     The attributed title.

     - parameter titleText: The text to make attributed.

     - returns: The attributed version of the title.
     */
    func attributedTitle(titleText: String, controlState: UIControlState) -> NSAttributedString {
        switch controlState {
        case UIControlState.Disabled, UIControlState.Highlighted:
            return disabledAttributedTitle(titleText)
        case UIControlState.Normal:
            return normalAttributedTitle(titleText)
        default:
            return normalAttributedTitle(titleText)
        }
    }

    /**
     The border color.

     - returns: The color of the border to be used.
     */
    func borderColor(controlState: UIControlState) -> CGColor {
        switch controlState {
        case UIControlState.Disabled:
            return disabledBorderColor()
        case UIControlState.Highlighted:
            return disabledBorderColor()
        case UIControlState.Normal:
            return normalBorderColor()
        default:
            return normalBorderColor()
        }
    }

    /**
     The border width.

     - returns: The width of the border.
     */
    func borderWidth() -> CGFloat {
        switch self {
        case .OutlineDarkButton:
            return 1.0
        case .OutlineLightButton:
            return 1.0
        default:
            return 0.0
        }
    }

    /**
     The title content edge insets.

     - returns: The content edge insets.
     */
    func contentEdgeInsets() -> UIEdgeInsets {
        return UIEdgeInsets(top: 17, left: 17, bottom: 17, right: 17)
    }

    private func normalAttributedTitle(titleText: String) -> NSAttributedString {
        switch self {
        case .DarkButton, OutlineLightButton:
            return riideFontTheme.headlineSmallText(titleText, weight: .Bold, kern: 2.0, color: riideColorTheme.White, alignment: .Center, uppercase: true, enableLineSpacing: false)
        case .OutlineDarkButton, LightButton:
            return riideFontTheme.headlineSmallText(titleText, weight: .Bold, kern: 2.0, color: riideColorTheme.Black, alignment: .Center, uppercase: true, enableLineSpacing: false)
        case .DarkTextButton:
            return riideFontTheme.BodyText(titleText, weight: .Bold, kern: 1.0, color: riideColorTheme.Black,uppercase: false, alignment: .Center, enableLineSpacing: false)
        case .LightTextButton:
            return riideFontTheme.BodyText(titleText, weight: .Bold, kern: 1.0, color: riideColorTheme.White, uppercase: false, alignment: .Center, enableLineSpacing: false)
        }
    }

    private func normalBackgroundColor() -> UIColor {
        switch self {
        case .DarkButton:
            return riideColorTheme.Black
        case .LightButton:
            return riideColorTheme.White
        default:
            return UIColor.clearColor()
        }
    }

    private func disabledBackgroundColor() -> UIColor {
        return normalBackgroundColor().colorWithAlphaComponent(riideColorTheme.DisableAlpha)
    }

    private func disabledAttributedTitle(titleText: String) -> NSAttributedString {
        switch self {
        case .DarkButton:
            return riideFontTheme.headlineSmallText(titleText,
                                                    weight: .Bold,
                                                    kern: 2.0,
                                                    color: riideColorTheme.White.colorWithAlphaComponent(riideColorTheme.DisableAlpha),
                                                    alignment: .Center,
                                                    uppercase: true,
                                                    enableLineSpacing: false)
        case .OutlineDarkButton:
            return riideFontTheme.headlineSmallText(titleText,
                                                    weight: .Bold,
                                                    kern: 2.0,
                                                    color: riideColorTheme.Black.colorWithAlphaComponent(riideColorTheme.DisableAlpha),
                                                    alignment: .Center,
                                                    uppercase: true,
                                                    enableLineSpacing: false)
        case .LightButton:
            return riideFontTheme.headlineSmallText(titleText,
                                                    weight: .Bold,
                                                    kern: 2.0,
                                                    color: riideColorTheme.Black.colorWithAlphaComponent(riideColorTheme.DisableAlpha),
                                                    alignment: .Center,
                                                    uppercase: true,
                                                    enableLineSpacing: false)
        case .OutlineLightButton:
            return riideFontTheme.headlineSmallText(titleText, weight: .Bold, kern: 2.0, color: riideColorTheme.White.colorWithAlphaComponent(riideColorTheme.DisableAlpha), alignment: .Center, uppercase: true, enableLineSpacing: false)
        case .DarkTextButton:
            return riideFontTheme.BodyText(titleText, weight: .Bold, kern: 1.0, color: riideColorTheme.Black.colorWithAlphaComponent(riideColorTheme.DisableAlpha), alignment: .Center, uppercase: false, enableLineSpacing: false)
        case .LightTextButton:
            return riideFontTheme.BodyText(titleText, weight: .Bold, kern: 1.0, color: riideColorTheme.White.colorWithAlphaComponent(riideColorTheme.DisableAlpha), alignment: .Center, uppercase: false, enableLineSpacing: false)
        }
    }

    private func normalBorderColor() -> CGColor {
        switch self {
        case .OutlineDarkButton:
            return riideColorTheme.Black.CGColor
        case .OutlineLightButton:
            return riideColorTheme.White.CGColor
        default:
            return UIColor.clearColor().CGColor
        }
    }

    private func disabledBorderColor() -> CGColor {
        return normalBackgroundColor().colorWithAlphaComponent(riideColorTheme.DisableAlpha).CGColor
    }

}
