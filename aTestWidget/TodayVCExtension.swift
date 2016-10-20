//
//  TodayVCExtension.swift
//  aTest
//
//  Created by Francesco Thiery on 18/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import Foundation
import UIKit

extension TodayViewController : UITableViewDelegate, UITableViewDataSource{
    @available(iOSApplicationExtension 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = UIColor.white
        return cell
    }

    @available(iOSApplicationExtension 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    
    
    
}
