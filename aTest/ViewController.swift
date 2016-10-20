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
    var isSelecting : Bool = true
    var fakeBeanList = CellBean.getBeans()
    
    override func adViewDidLoad() {
        super.adViewDidLoad()
        self.tableView.delegate = self
        self.title = "DeltaPlay"
        shareButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(ViewController.share))
        self.navigationItem.rightBarButtonItem = shareButton
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Annulla", style: .done, target: self, action: #selector(ViewController.seleziona))
        self.navigationItem.leftBarButtonItem?.setTitleTextAttributes( [NSFontAttributeName : UIFont.bebasNeueFont(ofSize: 16)!], for: .normal)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "@deltaforce76"
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
        
        if !fakeBeanList[indexPath.row].selected{
            playSound(name: fakeBeanList[indexPath.row].audioTitle)
        }
        
        if isSelecting{
            fakeBeanList[indexPath.row].selected = !fakeBeanList[indexPath.row].selected
            tableView.reloadData()
        }
        
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
    
    func seleziona(){
        if isSelecting{
            
            DispatchQueue.main.async {
                for bean in self.fakeBeanList{
                    bean.selected = false
                }
                (self.view as? UITableView)?.reloadData()
            }
            
            self.navigationItem.leftBarButtonItem?.title = "Seleziona"
        }else{
            self.navigationItem.leftBarButtonItem?.title = "Annulla"
        }
        
        isSelecting = !isSelecting
    }
}

