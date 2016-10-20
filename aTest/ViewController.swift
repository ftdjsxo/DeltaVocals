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


class ViewController: ADTableViewController {
    
    var player: AVAudioPlayer?
    var shareButton : UIBarButtonItem!
    
    override func adViewDidLoad() {
        super.adViewDidLoad()
        self.tableView.delegate = self
        self.title = "DeltaPlay"
        let addButtonImageView = UIImageView(image: UIImage(named: "share"))
        //shareButton = UIBarButtonItem(customView: addButtonImageView)
        shareButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(ViewController.share))
        //shareButton.customView = addButtonImageView
        //        shareButton.target = self
        //        shareButton.action = #selector(share)
        self.navigationItem.rightBarButtonItem = shareButton
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Ti vogliamo bene Andrè"
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
        playSound(name: fakeBeanList[indexPath.row].audioTitle)
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return false
    }
    
    func share() {
        var shareItems :Array = [Any]()
        for bean in fakeBeanList{
            if bean.selected{
                if let url = Bundle.main.url(forResource: bean.audioTitle, withExtension: "mp3"){
                    shareItems.append(url)
                }
            }
        }
        
        let activityViewController:UIActivityViewController = UIActivityViewController(activityItems: shareItems, applicationActivities: nil)
        activityViewController.excludedActivityTypes = [.print, .postToWeibo, .copyToPasteboard, .addToReadingList, .postToVimeo]
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    func playSound(name : String){
        let url = Bundle.main.url(forResource:name, withExtension: "mp3")!
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

