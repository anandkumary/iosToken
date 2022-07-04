//
//  Typography.swift
//  TokenDemo
//
//  Created by Anand Kumar on 02/07/22.
//

import UIKit

struct Typography {
    
    let fontFamily: String
    
    let fontWeight: String
    
    let fontSize: CGFloat
    
    let lineHeight: CGFloat
    
    let letterSpacing: CGFloat
    
    public init(
        fontFamily: String,
        fontWeight: String,
        fontSize: CGFloat,
        lineHeight: CGFloat,
        letterSpacing: CGFloat,
        textStyle: UIFont.TextStyle = .body
    ) {
        self.fontFamily = fontFamily
        self.fontWeight = fontWeight
        self.fontSize = fontSize
        self.lineHeight = lineHeight
        self.letterSpacing = letterSpacing
    }
    
    func font() -> UIFont {
        let text = String(format: "%@-%@", fontFamily, fontWeight)
        return UIFont(name: text, size: fontSize) ?? UIFont()
    }
    
    func attributedString(text: String) -> NSAttributedString {
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.paragraphSpacing = lineHeight

        let attributes = [NSAttributedString.Key.font:font(), NSAttributedString.Key.paragraphStyle:paragraphStyle]

        let attributedStr = NSMutableAttributedString(string: text,attributes: attributes)
        attributedStr.addAttribute(.font, value: font(), range: NSMakeRange(0, attributedStr.length))
        attributedStr.addAttribute(.kern, value: letterSpacing, range: NSMakeRange(0, attributedStr.length))
        
         return attributedStr
    }
}
