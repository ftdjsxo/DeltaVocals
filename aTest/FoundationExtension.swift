//
//  FoundationExtension.swift
//  aTest
//
//  Created by Francesco Thiery on 20/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import Foundation


func / (left : Int, right : Double) -> Double{
    return Double(left) / right
}

func / (left : Double, right : Int) -> Double{
    return left / Double(right)
}
