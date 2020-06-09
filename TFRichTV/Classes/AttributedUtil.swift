//
//  AttributedUtil.swift
//  TFRichTV_Example
//
//  Created by 方涛 on 2020/5/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import YYText

public struct AttributedUtil {
    
    var normalColor: UIColor
    var highlightColor: UIColor
    var protocolClickedHandler: (() -> Void)?
    var privacyClickedHandler: (() -> Void)?
    
    public init(normalColor: UIColor, highlightColor: UIColor, protocolClickedHandler: (() -> Void)?, privacyClickedHandler: (() -> Void)?) {
        self.normalColor = normalColor
        self.highlightColor = highlightColor
        self.protocolClickedHandler = protocolClickedHandler
        self.privacyClickedHandler = privacyClickedHandler
    }
    
    public func setAttributedString(agreementText: String, protocolStr: String, privateStr:String, font: UIFont = UIFont.systemFont(ofSize: 12)) -> NSMutableAttributedString {
        
        let text = NSMutableAttributedString.init(string: agreementText)
        text.yy_lineSpacing = 5
        text.yy_font = font
        
        text.yy_color = self.normalColor
        let protocolRange = "".nsRange(from: text.string.range(of: protocolStr)!)
        text.yy_setTextHighlight(protocolRange, color: self.highlightColor, backgroundColor: UIColor.clear) {  (containerView, text, range, rect) in
            if let protocolHandler = self.protocolClickedHandler {
                protocolHandler()
            }
        }
        
        let privateRange = "".nsRange(from: text.string.range(of: privateStr)!)
        text.yy_setTextHighlight(privateRange, color: self.highlightColor, backgroundColor: UIColor.clear) { (containerView, text, range, rect) in
            if let privacyHandler = self.privacyClickedHandler {
                privacyHandler()
            }
        }
        return text
    }
}


