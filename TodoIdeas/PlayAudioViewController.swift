//
//  PlayAudioViewController.swift
//  TodoIdeas
//
//  Created by JING ZHANG on 12/7/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.
//

import UIKit
import AVFoundation

class PlayAudioViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    var receivedAudio: RecordedAudio!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        try! audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, fileTypeHint:nil)
        audioPlayer.enableRate = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playAudio(sender: UIButton) {
        
        audioPlayer.stop()
        audioPlayer.rate = 1
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
    }
    
    
    @IBAction func stopPlay(sender: UIButton) {
         audioPlayer.stop()
        
    }
    
    
    @IBAction func returnMainPage(sender: UIButton) {
         navigationController?.popToRootViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
