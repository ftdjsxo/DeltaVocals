//
//  ADViewController.swift
//  aTest
//
//  Created by Francesco Thiery on 20/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import UIKit

class ADViewController : UIViewController{
    
    override func viewDidLoad() {
        self.navigationController?.navigationBar.barTintColor = UIColor.color(formRGB: RGBColor(red: 255, green: 59, blue: 48))
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.white, NSFontAttributeName : UIFont.bebasNeueFont(ofSize: 21)!]
        self.view.backgroundColor = UIColor.groupTableViewBackground
    }
}
