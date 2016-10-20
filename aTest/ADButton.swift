//
//  ADButton.swift
//  aTest
//
//  Created by Francesco Thiery on 20/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import UIKit
import SnapKit

class ADButtonFactory {
    
    class func getButton(iconName : String?, title : String) -> UIButton{
        let button = UIButton()
        button.backgroundColor = UIColor.color(formRGB: RGBColor(red: 255, green: 59, blue: 48))
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont.bebasNeueFont(ofSize: 18.5)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 1)
        button.layer.shadowRadius = 0.4
        button.layer.shadowOpacity = 0.7
        button.snp.makeConstraints { (make) in
            make.width.equalTo(170)
            make.height.equalTo(50)
        }
        
        return button
    }
    
    
}
