//
//  topViewGetRiideFlowVC.swift
//  Riide Proto
//
//  Created by VIRAKRI JINANGKUL on 5/7/16.
//  Copyright © 2016 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

let introBox3RiidePassDescription = "Love getting there on your Riide electric bike."

class topViewGetRiideFlowVC: UIViewController {
    
    @IBOutlet var subscribeButton: riideButton!
    
    
    @IBOutlet var riidePassLogoImage: UIImageView!
    
    @IBOutlet var riidePassDescriptionLabel: UILabel!
    
    @IBOutlet var riidePassDetailScrollView: UIScrollView!
    @IBOutlet var wrapperLeadingConstraint: NSLayoutConstraint!
    @IBOutlet var wrapperTrailingConstraint: NSLayoutConstraint!
    @IBOutlet var wrapperTopConstraint: NSLayoutConstraint!
    @IBOutlet var wrapperBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet var detail01Label: UILabel!
    
    @IBOutlet var detail02Label: UILabel!
    
    @IBOutlet var detail03Label: UILabel!
    
    @IBOutlet var detail04Label: UILabel!
    
    @IBOutlet var detail05Label: UILabel!
    
    @IBOutlet var detail06Label: UILabel!
    
    @IBOutlet var detail07Label: UILabel!
    
    let subscribeButtonText = "$79 / MONTH - SUBSCRIBE"
    
    let detail01Text = "Reserve your bike! $79 holds your place in line, and bikes will ship in order of the queue. Sign up this month to receive a FREE Abus lock + FREE shipping and lock in launch pricing. "
    let detail02Text = "RiidePass is available in all 50 states. Your $79 deposit gets applied to your first payment, which you won't owe until your bike ships."
    let detail03Text = "Includes"
    let detail04Text = "Your own Riide electric bike\nTheft Insurance\nCharger and lock\nUnlimited maintenance (DC + SF only)"
    let detail05Text = "Fine print"
    let detail06Text = "$299 down payment charged upon delivery\n12 month commitment\nOwn it forever after 2 years or upgrade to the latest model for free"
    let detail07Text = "Total cost of ownership after 24 months of RiidePass is $2195. Riide bike available for a one-time cost of $1999."
    let detail08Text = ""
    let detail09Text = ""
    let detail10Text = ""
    
    @IBOutlet var wrapperView: UIView!
    @IBOutlet var xBtnButton: UIButton!
    override func viewDidLoad() {
        self.riidePassLogoImage.alpha = 0
        self.riidePassDescriptionLabel.alpha = 0
        self.riidePassDetailScrollView.alpha = 0
        self.subscribeButton.alpha = 0
        
        self.riidePassLogoImage.transform = CGAffineTransformMakeTranslation(0, 32)
        self.riidePassDescriptionLabel.transform = CGAffineTransformMakeTranslation(0, 32+8)
        self.riidePassDetailScrollView.transform = CGAffineTransformMakeTranslation(0, 32+8*2)
        self.subscribeButton.transform = CGAffineTransformMakeTranslation(0, 32+8*3)
        riidePassDetailScrollView.backgroundColor = riideColorTheme.init().riideWhisperGray
        subscribeButton.type = .DarkButton
        riidePassDescriptionLabel.attributedText = riideFontTheme.BodyText(introBox3RiidePassDescription, alignment: .Center)
        
        subscribeButton.setTitle(subscribeButtonText, forState: .Normal)
        
        detail01Label.attributedText = riideFontTheme.BodyText(detail01Text, color: riideColorTheme.init().riideBlue)
        
        detail02Label.attributedText = riideFontTheme.BodyText(detail02Text)
        detail03Label.attributedText = riideFontTheme.headlineLargeText(detail03Text, enableLineSpacing: false)
        detail04Label.attributedText = riideFontTheme.BodyListText(detail04Text)
        detail05Label.attributedText = riideFontTheme.headlineLargeText(detail03Text, enableLineSpacing: false)
        detail06Label.attributedText = riideFontTheme.BodyListText(detail06Text)
        detail07Label.attributedText = riideFontTheme.BodyText(detail07Text)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.2, delay: 0.2, options: .CurveEaseOut, animations: {
            self.riidePassLogoImage.alpha = 1
            self.riidePassLogoImage.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
        UIView.animateWithDuration(0.22, delay: 0.2, options: .CurveEaseOut, animations: {
            self.riidePassDescriptionLabel.alpha = 1
            self.riidePassDescriptionLabel.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
        UIView.animateWithDuration(0.24, delay: 0.2, options: .CurveEaseOut, animations: {
            self.riidePassDetailScrollView.alpha = 1
            self.riidePassDetailScrollView.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
        UIView.animateWithDuration(0.26, delay: 0.2, options: .CurveEaseOut, animations: {
            self.subscribeButton.alpha = 1
            self.subscribeButton.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
    }
    
    
    @IBAction func xBtnButtonDidTouch(sender: AnyObject) {
        
        UIApplication.sharedApplication().sendAction("topBox3TransitionBack:", to: nil, from: self, forEvent: nil)
        
        UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations:{
            
            self.wrapperLeadingConstraint.constant = 10
            self.wrapperTrailingConstraint.constant = 10
            self.wrapperTopConstraint.constant = 20
            self.wrapperBottomConstraint.constant = 72
//
            self.view.layoutIfNeeded()
//
            let multiply:CGFloat = 5
            self.riidePassLogoImage.transform = CGAffineTransformMakeTranslation(0, 32 * multiply)
            self.riidePassDescriptionLabel.transform = CGAffineTransformMakeTranslation(0, (32+8) * multiply)
            self.riidePassDetailScrollView.transform = CGAffineTransformMakeTranslation(0, (32+8*2) * multiply)
            self.subscribeButton.transform = CGAffineTransformMakeTranslation(0, (32+8*3) * multiply)
//            
//            
//            
            self.wrapperView.alpha = 0
            self.xBtnButton.alpha = 0
            }, completion: {
                (value : Bool) in
                self.dismissViewControllerAnimated(false, completion: nil)
                
        })
        
    }

}
