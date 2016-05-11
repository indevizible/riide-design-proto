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
            NSForegroundColorAttributeName: riideColorTheme.Black,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
            NSKernAttributeName: 0.25,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
            NSKernAttributeName: 0.25,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
            NSKernAttributeName: 0.25,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
            NSKernAttributeName: 0.25,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
            NSKernAttributeName: 0.5,
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
            NSForegroundColorAttributeName: riideColorTheme.Black,
            NSKernAttributeName: 0.5,
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
            NSForegroundColorAttributeName: riideColorTheme.DarkGray,
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
            NSForegroundColorAttributeName: riideColorTheme.DarkGray,
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
            NSForegroundColorAttributeName: riideColorTheme.DarkGray,
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
            NSForegroundColorAttributeName: riideColorTheme.DarkGray,
            NSKernAttributeName: 0.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var bodyList: FontAttributes {
        let tabSize: CGFloat = 16
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 6
        paragraphStyle.paragraphSpacing = 0
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        paragraphStyle.headIndent = tabSize
        paragraphStyle.firstLineHeadIndent = tabSize/2
        paragraphStyle.tabStops = [NSTextTab(textAlignment: .Left, location: tabSize, options: [:]),]
        
        return [
            NSFontAttributeName: Fonts.maisonBook(fontSizeMedium),
            NSForegroundColorAttributeName: riideColorTheme.DarkGray,
            NSKernAttributeName: 0.0,
            NSParagraphStyleAttributeName: paragraphStyle
        ]
        
    }
    
    /**
     text style.
     */
    var bodyListBold: FontAttributes {
        let tabSize: CGFloat = 16
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 6
        paragraphStyle.paragraphSpacing = 0
        paragraphStyle.alignment = NSTextAlignment.Left
        paragraphStyle.lineBreakMode = NSLineBreakMode.ByTruncatingTail
        paragraphStyle.headIndent = tabSize
        paragraphStyle.firstLineHeadIndent = tabSize/2
        paragraphStyle.tabStops = [NSTextTab(textAlignment: .Left, location: tabSize, options: [:]),]
        return [
            NSFontAttributeName: Fonts.maisonBold(fontSizeMedium),
            NSForegroundColorAttributeName: riideColorTheme.DarkGray,
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
            NSForegroundColorAttributeName: riideColorTheme.DarkGray,
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
            NSForegroundColorAttributeName: riideColorTheme.DarkGray,
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
            textstyleAttributes  = riideFontTheme().headlineJumbo
        case .Bold:
            textstyleAttributes = riideFontTheme().headlineJumboBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.Black
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.White
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
            textstyleAttributes  = riideFontTheme().headlineExtraExtraLarge
        case .Bold:
            textstyleAttributes = riideFontTheme().headlineExtraExtraLargeBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.Black
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.White
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
            textstyleAttributes  = riideFontTheme().headlineExtraLarge
        case .Bold:
            textstyleAttributes = riideFontTheme().headlineExtraLargeBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.Black
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.White
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
            textstyleAttributes  = riideFontTheme().headlineLarge
        case .Bold:
            textstyleAttributes = riideFontTheme().headlineLargeBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.Black
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.White
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
            textstyleAttributes  = riideFontTheme().headlineSmall
        case .Bold:
            textstyleAttributes = riideFontTheme().headlineSmallBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.Black
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.White
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
            textstyleAttributes  = riideFontTheme().bodyLarge
        case .Bold:
            textstyleAttributes = riideFontTheme().bodyLargeBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.DarkGray
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.DarkGray
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
            textstyleAttributes  = riideFontTheme().body
        case .Bold:
            textstyleAttributes = riideFontTheme().bodyBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.DarkGray
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.DarkGray
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? text.uppercaseString : text
        
        return NSAttributedString(string: processedText, attributes: textstyleAttributes)
    }

    static func BodyListText(text: String,
                         weight: FontWeight = .Regular,
                         kern: CGFloat? = nil,
                         color: UIColor? = nil,
                         alignment: NSTextAlignment = .Left,
                         uppercase: Bool = false,
                         enableLineSpacing: Bool = true) -> NSAttributedString {
        var textstyleAttributes: FontAttributes
        
        switch weight {
        case .Regular:
            textstyleAttributes  = riideFontTheme().bodyList
        case .Bold:
            textstyleAttributes = riideFontTheme().bodyListBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.DarkGray
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.DarkGray
        }
        
        
        if let paragraph = textstyleAttributes[NSParagraphStyleAttributeName] as? NSMutableParagraphStyle {
            paragraph.lineSpacing = enableLineSpacing ? paragraph.lineSpacing : 0
            paragraph.alignment = alignment
            textstyleAttributes[NSParagraphStyleAttributeName] = paragraph
        }
        
        let processedText: String = uppercase ? "•\t" + text.uppercaseString.stringByReplacingOccurrencesOfString("\n", withString: "\n•\t") : "•\t" + text.stringByReplacingOccurrencesOfString("\n", withString: "\n•\t")
        
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
            textstyleAttributes  = riideFontTheme().bodySmall
        case .Bold:
            textstyleAttributes = riideFontTheme().bodySmallBold
        }
        
        textstyleAttributes[NSKernAttributeName] = kern ?? textstyleAttributes[NSKernAttributeName]
        
        switch riideCurrentStyle {
        case .darkContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.DarkGray
        case .lightContent:
            textstyleAttributes[NSForegroundColorAttributeName] = color ?? riideColorTheme.DarkGray
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
