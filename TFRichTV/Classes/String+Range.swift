//
//  String+Range.swift
//  TFRichTV_Example
//
//  Created by 方涛 on 2020/5/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

extension String {
    /// Range转换为NSRange
    func nsRange(from range: Range<String.Index>) -> NSRange {
        return NSRange(range, in: self)
    }
    
    /// NSRange转化为range
    func range(from nsRange: NSRange) -> Range<String.Index>? {
        guard
            let from16 = utf16.index(utf16.startIndex, offsetBy: nsRange.location, limitedBy: utf16.endIndex),
            let to16 = utf16.index(from16, offsetBy: nsRange.length, limitedBy: utf16.endIndex),
            let from = String.Index(from16, within: self),
            let to = String.Index(to16, within: self)
            else { return nil }
          return from ..< to
    }
    
}
