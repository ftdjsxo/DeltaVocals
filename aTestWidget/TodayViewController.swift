//
//  TodayViewController.swift
//  aTestWidget
//
//  Created by Francesco Thiery on 18/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import UIKit
import SnapKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    var button : UIButton!
    var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initComponents()
        self.view.backgroundColor = UIColor.brown
        self.view.addSubview(button)
        self.view.addSubview(tableView)
        setupButton()
        setupTable()
        makeInternalConstraints()
        
        self.preferredContentSize = CGSize(width: 0, height: 1000)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func widgetMarginInsets(forProposedMarginInsets defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    @nonobjc func widgetPerformUpdate(completionHandler: ((NCUpdateResult) -> Void)) {
        completionHandler(NCUpdateResult.newData)
    }

    func initComponents(){
        button = UIButton(type: .system)
        tableView = UITableView()
    }
    
    func setupTable(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setupButton(){
        button.layer.cornerRadius = 5
        button.backgroundColor = UIColor.darkGray
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 3, height: 3)
        button.layer.shadowRadius = 3
        button.setTitle("Prova", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
    }
    
    func makeInternalConstraints(){
        button.snp.makeConstraints { (make) in
            make.left.top.equalTo(self.view).inset(20)
            make.width.equalTo(100)
            make.height.equalTo(30)
        }
        
        tableView.snp.makeConstraints { (make) in
            make.top.right.bottom.equalTo(self.view).inset(20)
            make.left.equalTo(button.snp.right).offset(20)
        }
    }
}
