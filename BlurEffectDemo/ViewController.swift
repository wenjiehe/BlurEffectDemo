//
//  ViewController.swift
//  BlurEffectDemo
//
//  Created by 贺文杰 on 2019/7/15.
//  Copyright © 2019 贺文杰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var baseView: UIView!
    
    ///创建模糊效果
    var blurEffect = UIBlurEffect.init(style: .regular)
    var visualEffectView = UIVisualEffectView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.setNeedsLayout()
        self.view.layoutIfNeeded()
        
        /// 承载模糊效果的视图
        visualEffectView = UIVisualEffectView.init(effect: blurEffect)
        visualEffectView.frame = baseView.frame
        
        /// UIVibrancyEffect作用是放大和调整UIVisualEffectView内容视图的内容的颜色
        let vibrancyView = UIVisualEffectView.init(effect: UIVibrancyEffect.init(blurEffect: blurEffect))
        vibrancyView.frame = baseView.frame
        
        visualEffectView.contentView.addSubview(vibrancyView)
        
        let whiteView = UIView.init(frame: CGRect.init(x: 20, y: 20, width: baseView.frame.width - 40, height: 150))
        whiteView.backgroundColor = .white
        
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: whiteView.frame.width, height: whiteView.frame.height))
        label.text = "HelveticaNeue-Bold"
        label.font = UIFont.init(name: "HelveticaNeue-Bold", size: 30)
        label.textAlignment = .center
        whiteView.addSubview(label)
        
        vibrancyView.contentView.addSubview(label)
        
        self.view.addSubview(visualEffectView)
        
    }

}

