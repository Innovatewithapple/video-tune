//
//  ViewController.swift
//  videoplayer
//
//  Created by admin on 06/10/18.
//  Copyright © 2018 hv. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

class ViewController: UIViewController {

//    https://www.youtube.com/watch?v=kJU9KPeQHMA&list=PLmfcCDSUSykZWeX351oSQhOkjz67eFgjp
//    kJU9KPeQHMA  - videoID
//    PLmfcCDSUSykZWeX351oSQhOkjz67eFgjp - playlistID
    
    @IBOutlet weak var videoscreen: YouTubePlayerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    @IBAction func previousTapped(_ sender: Any) {
        videoscreen.previousVideo()
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.isSelected{
            sender.setTitle("Pause", for: .selected)
        } else {
            sender.setTitle("Play", for: .normal)
        }
    }
    
    
    
    @IBAction func nextTapped(_ sender: Any) {
        videoscreen.nextVideo()
    }
    
    
    @IBAction func loadmusic(_ sender: Any) {
        let myvideo: String = "kJU9KPeQHMA"
        videoscreen.loadVideoID(myvideo)
    }
    

    @IBAction func playlist(_ sender: Any) {
        let myplaylist: String = "PLmfcCDSUSykZWeX351oSQhOkjz67eFgjp"
        videoscreen.loadPlaylistID(myplaylist)
    }
    
    
}



















