//
//  CellBean.swift
//  aTest
//
//  Created by Francesco Thiery on 20/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import Foundation

struct CellBean {
    var selected : Bool
    let title : String
    let imageName : String?
    let audioTitle : String
}

var fakeBeanList : [CellBean] = [CellBean.init(selected: false, title: "Vaffanculo", imageName: "audio", audioTitle : "vaffanculo"),
                                 CellBean.init(selected: true, title: "Vaffanculo", imageName: "audio", audioTitle : "vaffanculo"),
                                 CellBean.init(selected: false, title: "Vaffanculo", imageName: "audio", audioTitle : "vaffanculo")]
