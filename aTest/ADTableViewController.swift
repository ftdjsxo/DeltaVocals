//
//  ADTableViewController.swift
//  aTest
//
//  Created by Francesco Thiery on 20/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import UIKit

class ADTableViewController : ADViewController, UITableViewDataSource, UITableViewDelegate{
    
    var tableView : UITableView!
    
    final override func viewDidLoad() {
        super.viewDidLoad()
        self.view = tableView

        tableView = getTableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        adViewDidLoad()
    }
    
    func adViewDidLoad(){
       //adViewDidLoad() Must been implemented instead of viewDidLoad()
    }
    
    //@available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func getTableView() -> UITableView{
        return UITableView(frame: CGRect.zero, style: .grouped)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        print("edit")
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("aoh")
    }

}
