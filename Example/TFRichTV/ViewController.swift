//
//  ViewController.swift
//  TFRichTV
//
//  Created by 419512332@qq.com on 05/29/2020.
//  Copyright (c) 2020 419512332@qq.com. All rights reserved.
//

import UIKit
import TFRichTV

class ViewController: UIViewController {
    
    let protocolLabel: RichProtocolLabel = {
        let lab = RichProtocolLabel.init(frame: CGRect(x: 20, y: 100, width: UIScreen.main.bounds.size.width - 40.0, height: 40.0), font: UIFont.systemFont(ofSize: 12.0), textColor: UIColor.lightGray)
        return lab
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(protocolLabel)
        
        let attributeUtil = AttributedUtil(normalColor: .lightGray, highlightColor: .red, protocolClickedHandler: {
            print("点击了协议～")
        }) {
            print("点击了隐私政策～")
        }
        
        let attributeText = attributeUtil.setAttributedString(agreementText: "登录即代表您已阅读并同意《用户协议》和《隐私政策》", protocolStr: "《用户协议》", privateStr: "《隐私政策》")
        protocolLabel.attributedText = attributeText
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

