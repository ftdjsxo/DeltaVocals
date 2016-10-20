//
//  ViewController.swift
//  aTest
//
//  Created by Francesco Thiery on 18/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import UIKit
import NVActivityIndicatorView
import AVFoundation

struct FakeBean {
    var selected : Bool
    let title : String
    let imageName : String?
}

var fakeBeanList : [FakeBean] = [FakeBean.init(selected: false, title: "Macchina bella", imageName: "bmw"),
                                 FakeBean.init(selected: true, title: "Macchina economica", imageName: "alfaromeo"),
                                 FakeBean.init(selected: false, title: "Macchina brum", imageName: "lambo")]


class ViewController: ADTableViewController {
    
    var player: AVAudioPlayer?
    
    override func adViewDidLoad() {
        super.adViewDidLoad()
        self.tableView.delegate = self
        self.title = "CarDesign"
        let addButtonImageView = UIImageView(image: UIImage(named: "add"))
        let addButton = UIBarButtonItem(customView: addButtonImageView)
        self.navigationItem.rightBarButtonItem = addButton
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Delta gay"
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        let button = ADButtonFactory.getButton(iconName: nil, title: "Azione")
        button.addTarget(self, action: #selector(shareImage), for: .touchUpInside)
        view.addSubview(button)
        
        button.snp.makeConstraints { (make) in
            make.center.equalTo(view)
        }
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fakeBeanList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if let name = fakeBeanList[indexPath.row].imageName{
            cell.imageView?.image = UIImage(named : name)
        }
        
        if fakeBeanList[indexPath.row].selected{
            cell.accessoryType = .checkmark
        }
        cell.textLabel?.text = fakeBeanList[indexPath.row].title
        cell.textLabel?.font = UIFont.featuredItem(ofSize: 16)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        fakeBeanList[indexPath.row].selected = !fakeBeanList[indexPath.row].selected
        tableView.reloadData()
        playSound()
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            fakeBeanList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.reloadData()
        default:
            break
        }
    }
    
    func shareImage() {
        //activityIndicator.startAnimating()
//        var shareItems:Array = [UIImage]()
//        for bean in fakeBeanList{
//            if bean.selected{
//                let img: UIImage = UIImage(named: bean.imageName!)!
//                shareItems.append(img)
//            }
//        }
        
        let url = Bundle.main.url(forResource: "vaffanculo", withExtension: "mp3")!
        var shareItems:Array = [url]
        let activityViewController:UIActivityViewController = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)
        activityViewController.excludedActivityTypes = [.print, .postToWeibo, .copyToPasteboard, .addToReadingList, .postToVimeo]
        self.present(activityViewController, animated: true) {
            //self.activityIndicator.stopAnimating()
        }
    }
    
    func playSound(){
        let url = Bundle.main.url(forResource: "vaffanculo", withExtension: "mp3")!
        
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else {
                return
            }
            
            player.prepareToPlay()
            player.play()
        } catch let error  {
            print(error)
        }

    }
    
}

