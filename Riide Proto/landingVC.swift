//
//  landingVC.swift
//  Riide Proto
//
//  Created by VIRAKRI JINANGKUL on 5/1/16.
//  Copyright © 2016 VIRAKRI JINANGKUL. All rights reserved.
//

import AVKit
import AVFoundation
import UIKit

class landingVC: UIViewController {
    
    @IBOutlet var landingWrapingView: UIView!
    
    @IBOutlet var getRiideButton: riideButton!
    
    @IBOutlet var alreadyHaveButton: riideButton!
    
    @IBOutlet var welcomeTextLabel: UILabel!
    
    @IBOutlet var landingRiideLogoImage: UIImageView!
    let welcomeText:String = "GO FURTHER AND\n FLATTEN HILLS.\n SWEATING OPTIONAL.";

    var player: AVPlayer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Load the video from the app bundle.
        let videoURL: NSURL = NSBundle.mainBundle().URLForResource("riide_background", withExtension: "mp4")!
        
        player = AVPlayer(URL: videoURL)
        player?.actionAtItemEnd = .None
        player?.muted = true
        
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        playerLayer.zPosition = -1
        
        playerLayer.frame = view.frame
        
        view.layer.addSublayer(playerLayer)
        
        player?.play()
        
        //loop video
        NSNotificationCenter.defaultCenter().addObserver(self,
                                                         selector: "loopVideo",
                                                         name: AVPlayerItemDidPlayToEndTimeNotification,
                                                         object: nil)
        
        self.landingWrapingView.backgroundColor = UIColor(patternImage: UIImage(named: "landingBackground")!)

    
        welcomeTextLabel.attributedText = riideFontTheme.headlineExtraLargeText(welcomeText, weight: .Bold, kern: 2, color: riideColorTheme.init().riideWhite, alignment: .Right, uppercase: true, enableLineSpacing: true)
        
        getRiideButton.type = .OutlineLightButton
        alreadyHaveButton.type = .LightTextButton
        
                
        
    }
    
    func loopVideo() {
        player?.seekToTime(kCMTimeZero)
        player?.play()
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    @IBAction func getRiideButtonDidTouch(sender: AnyObject) {
        viewTransitionOut()
        
    }
    
    @IBAction func alreadyHaveButtonDidTouch(sender: AnyObject) {
        viewTransitionOut()
        delay(0.4){
            self.performSegueWithIdentifier("batteryDashboardSegue", sender: self)
        }
    }
    
    
    func viewTransitionOut() {
        
        let videoLayer = view.layer.sublayers![(view.layer.sublayers?.count)! - 1] as CALayer
        
        
        UIView.animateWithDuration(0.1,
                                   delay: 0,
                                   options: .CurveEaseIn,
                                   animations: {
                                    
                                    self.landingRiideLogoImage.transform = CGAffineTransformMakeTranslation(0, 0)
                                    self.landingRiideLogoImage.alpha = 0
                                    
                                    
            },
                                   completion: nil)
        
        UIView.animateWithDuration(0.1,
                                   delay: 0.05,
                                   options: .CurveEaseIn,
                                   animations: {
                                    
                                    self.welcomeTextLabel.transform = CGAffineTransformMakeTranslation(0, 0)
                                    self.welcomeTextLabel.alpha = 0
                                    
                                    
            },
                                   completion: nil)
        
        UIView.animateWithDuration(0.1,
                                   delay: 0.0,
                                   options: .CurveEaseIn,
                                   animations: {
                                    
                                    self.getRiideButton.transform = CGAffineTransformMakeTranslation(0, 8)
                                    self.getRiideButton.alpha = 0
                                    
                                    
            },
                                   completion: nil)
        UIView.animateWithDuration(0.1,
                                   delay: 0.1,
                                   options: .CurveEaseIn,
                                   animations: {
                                    
                                    self.alreadyHaveButton.transform = CGAffineTransformMakeTranslation(0, 8)
                                    self.alreadyHaveButton.alpha = 0
                                    
                                    
            },
                                   completion: nil)
        
        UIView.animateWithDuration(0.2,
                                   delay: 0.2,
                                   options: .CurveEaseIn,
                                   animations: {
                                    
                                    videoLayer.opacity = 0.0
                                    self.landingWrapingView.alpha = 0.0
                                    
            },
                                   completion: nil)
        
        
        
        
    }

}

func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}
