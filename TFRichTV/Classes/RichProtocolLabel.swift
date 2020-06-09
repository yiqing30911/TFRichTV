//
//  RichProtocolLabel.swift
//  TFRichTV_Example
//
//  Created by 方涛 on 2020/5/29.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import YYText

public class RichProtocolLabel: YYLabel {
    public init(frame: CGRect, font: UIFont, textColor: UIColor) {
        super.init(frame: frame)
        self.backgroundColor = .clear
        self.isUserInteractionEnabled = true
        self.font = font
        self.textColor = textColor
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
