//
//  UIKitExtension.swift
//  aTest
//
//  Created by Francesco Thiery on 20/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import UIKit

struct RGBColor {
    let red : Int
    let green : Int
    let blue : Int
}

extension UIFont {
    
    class func bebasNeueFont(ofSize size : CGFloat) -> UIFont?{
        return UIFont(name: "BebasNeue", size: size)
    }
    
    class func mandatorFont(ofSize size : CGFloat) -> UIFont?{
        return UIFont(name: "Mandatory", size: size)
    }
    
    class func featuredSpaceItem(ofSize size : CGFloat) -> UIFont?{
        return UIFont(name: "Featured Item", size: size)
    }
    
    class func featuredItem(ofSize size : CGFloat) -> UIFont?{
        return UIFont(name: "FeaturedItem", size: size)
    }
    
    class func printAllFont(){
        for family in UIFont.familyNames{
            print(family)
            for name in UIFont.fontNames(forFamilyName: family){
                print(name)
            }
        }
    }
}

extension UIColor {
    
    //Passing a Hex value
    class func color(fromHex value : UInt) -> UIColor{
        return UIColor(
            red: CGFloat((value & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((value & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(value & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    //Passing a Hex value and opacity (between 0 and 1)
    class func color(fromHex value : UInt, andOpacity alpha : CGFloat) -> UIColor{
        return UIColor(
            red: CGFloat((value & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((value & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(value & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    //Passing a RGBColor value
    class func color(formRGB color: RGBColor) -> UIColor{
        guard (color.red <= 255 && color.red >= 0) && (color.green <= 255 && color.green >= 0) && (color.blue <= 255 && color.blue >= 0) else{
            fatalError("RGBColor values must been between 0 and 255")
        }
        
        return UIColor(
            red: CGFloat(color.red / 255.0),
            green: CGFloat(color.green / 255.0),
            blue: CGFloat(color.blue / 255.0),
            alpha: CGFloat(1.0)
        )
    }
}

extension UIView {
    
    func addSubViews(views : UIView...){
        for view in views{
            self.addSubview(view)
        }
    }
    
}
