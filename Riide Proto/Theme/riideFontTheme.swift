//
//  riideFontTheme.swift
//  Riide Proto
//
//  Created by VIRAKRI JINANGKUL on 5/1/16.
//  Copyright © 2016 VIRAKRI JINANGKUL. All rights reserved.
//
import UIKit
import Foundation

/// Font Attributes definition.
public typealias FontAttributes = [String: NSObject]


internal struct riideFontTheme {
    
    

    let colorTheme = riideColorTheme()
    
    /**
     Define *Font Size Jumbo* = **42.0**
     
     */
    let fontSizeJumbo: CGFloat = 64.0
    
    /**
     Define *Font Size ExtraExtralarge* = **18.0**
     
     */
    let fontSizeExtraExtralarge: CGFloat = 32.0
    
    /**
     Define *Font Size Extralarge* = **18.0**
     
     */
    let fontSizeExtralarge: CGFloat = 21.0
    
    /**
     Define *Font Size Large* = **14.0**
     
     */
    let fontSizeLarge: CGFloat = 14.0
    
    /**
     Define *Font Size Medium* = **12.0**
     
     */
    let fontSizeMedium: CGFloat = 12.0
    
    /**
     Define *Font Size Small* = **10.0**
     
     */
    let fontSizeSmall: CGFloat = 10.0
    
    /**
     text style.
     */
    var headlineJumbo: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 0
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeJumbo),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: -1.4,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineJumboBold: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 0
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeJumbo),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: -1.4,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineExtraExtraLarge: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeExtraExtralarge),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: 0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineExtraExtraLargeBold: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeExtraExtralarge),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: 0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineExtraLarge: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeExtralarge),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: 0.75,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineExtraLargeBold: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeExtralarge),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: 0.75,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineLarge: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 7
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeLarge),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: 0.75,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineLargeBold: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 7
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeLarge),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: 0.75,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineSmall: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeSmall),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: 0.75,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var headlineSmallBold: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeSmall),
            NSForegroundColorAttributeName: colorTheme.riideBlack,
            NSKernAttributeName: 0.75,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var bodyLarge: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 6
        paragraphStyle.paragraphSpacing = 8
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeLarge),
            NSForegroundColorAttributeName: colorTheme.riideDarkGray,
            NSKernAttributeName: 0.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var bodyLargeBold: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 6
        paragraphStyle.paragraphSpacing = 8
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeLarge),
            NSForegroundColorAttributeName: colorTheme.riideDarkGray,
            NSKernAttributeName: 0.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var body: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 6
        paragraphStyle.paragraphSpacing = 8
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeMedium),
            NSForegroundColorAttributeName: colorTheme.riideDarkGray,
            NSKernAttributeName: 0.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var bodyBold: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 6
        paragraphStyle.paragraphSpacing = 8
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeMedium),
            NSForegroundColorAttributeName: colorTheme.riideDarkGray,
            NSKernAttributeName: 0.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var bodySmall: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        paragraphStyle.paragraphSpacing = 8
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeSmall),
            NSForegroundColorAttributeName: colorTheme.riideDarkGray,
            NSKernAttributeName: 0.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var bodySmallBold: FontAttributes {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        paragraphStyle.paragraphSpacing = 8
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeSmall),
            NSForegroundColorAttributeName: colorTheme.riideDarkGray,
            NSKernAttributeName: 0.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    
    static func headlineJumboText(text: String,
                                  weight: FontWeight = .Regular,
                                  kern: CGFloat? = nil,
                                  color: UIColor? = nil,
                                  alignment: NSTextAlignment = .Left,
                                  uppercase: Bool = false,
                                  enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme.init().headlineJumbo
        case .Bold:
            textstyleAttributes = riideFontTheme.init().headlineJumboBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideBlack
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideWhite
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }
    
    
    static func headlineExtraExtraLargeText(text: String,
                                       weight: FontWeight = .Bold,
                                       kern: CGFloat? = nil,
                                       color: UIColor? = nil,
                                       alignment: NSTextAlignment = .Left,
                                       uppercase: Bool = false,
                                       enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme.init().headlineExtraExtraLarge
        case .Bold:
            textstyleAttributes = riideFontTheme.init().headlineExtraExtraLargeBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideBlack
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideWhite
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }

    
    
    static func headlineExtraLargeText(text: String,
                                       weight: FontWeight = .Bold,
                                       kern: CGFloat? = nil,
                                       color: UIColor? = nil,
                                       alignment: NSTextAlignment = .Left,
                                       uppercase: Bool = false,
                                       enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme.init().headlineExtraLarge
        case .Bold:
            textstyleAttributes = riideFontTheme.init().headlineExtraLargeBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideBlack
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideWhite
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }

    static func headlineLargeText(text: String,
                                       weight: FontWeight = .Bold,
                                       kern: CGFloat? = nil,
                                       color: UIColor? = nil,
                                       alignment: NSTextAlignment = .Left,
                                       uppercase: Bool = false,
                                       enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme.init().headlineLarge
        case .Bold:
            textstyleAttributes = riideFontTheme.init().headlineLargeBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideBlack
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideWhite
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }
    
    static func headlineSmallText(text: String,
                                  weight: FontWeight = .Regular,
                                  kern: CGFloat? = nil,
                                  color: UIColor? = nil,
                                  alignment: NSTextAlignment = .Left,
                                  uppercase: Bool = false,
                                  enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme.init().headlineSmall
        case .Bold:
            textstyleAttributes = riideFontTheme.init().headlineSmallBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideBlack
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideWhite
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }
    
    static func BodyLargeText(text: String,
                                  weight: FontWeight = .Regular,
                                  kern: CGFloat? = nil,
                                  color: UIColor? = nil,
                                  alignment: NSTextAlignment = .Left,
                                  uppercase: Bool = false,
                                  enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme.init().bodyLarge
        case .Bold:
            textstyleAttributes = riideFontTheme.init().bodyLargeBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideDarkGray
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideDarkGray
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }
    
    static func BodyText(text: String,
                         weight: FontWeight = .Regular,
                         kern: CGFloat? = nil,
                         color: UIColor? = nil,
                         alignment: NSTextAlignment = .Left,
                         uppercase: Bool = false,
                         enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme.init().body
        case .Bold:
            textstyleAttributes = riideFontTheme.init().bodyBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideDarkGray
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideDarkGray
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }

    static func BodySmallText(text: String,
                         weight: FontWeight = .Regular,
                         kern: CGFloat? = nil,
                         color: UIColor? = nil,
                         alignment: NSTextAlignment = .Left,
                         uppercase: Bool = false,
                         enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme.init().bodySmall
        case .Bold:
            textstyleAttributes = riideFontTheme.init().bodySmallBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideDarkGray
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.init().riideDarkGray
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }

    
    
}
