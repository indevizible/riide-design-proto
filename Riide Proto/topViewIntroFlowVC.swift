//
//  topViewIntroFlowVC.swift
//  Riide Proto
//
//  Created by VIRAKRI JINANGKUL on 5/7/16.
//  Copyright © 2016 VIRAKRI JINANGKUL. All rights reserved.
//

import UIKit

let getRiideButtonText = "Get Your Riide"
let takeTestRiideButtonText = "Take A Test Riide"

class topViewIntroFlowVC: UIViewController {
    
    //constraint Top Box1
    @IBOutlet var backgroundVisualEffectView: UIVisualEffectView!
    
    @IBOutlet var topBoxLeadingConstraint: NSLayoutConstraint!
    @IBOutlet var topBoxTrailingConstraint: NSLayoutConstraint!
    @IBOutlet var topBoxTopConstraint: NSLayoutConstraint!
    @IBOutlet var topBoxHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet var wrapperLeadingConstraint: NSLayoutConstraint!
    @IBOutlet var wrapperTrailingConstraint: NSLayoutConstraint!
    @IBOutlet var wrapperTopConstraint: NSLayoutConstraint!
    @IBOutlet var wrapperBottomConstraint: NSLayoutConstraint!
    
    
    @IBOutlet var topBoxHeadline: UILabel!
    @IBOutlet var topBoxHeadlineDes: UILabel!
    
    @IBOutlet var topBoxBottomToButtonConstraint: NSLayoutConstraint!
    
    @IBOutlet var topBoxBetweenButtonConstraint: NSLayoutConstraint!
    
    @IBOutlet var navbarView: UIView!

    @IBOutlet var xBtnButton: UIButton!
    
    @IBOutlet var getRiideButton: riideButton!
    
    @IBOutlet var takeTestRiideButton: riideButton!
    
    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var wrapperView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        xBtnButton.alpha = 0
        navbarView.alpha = 0
        
        navbarView.backgroundColor = riideColorTheme.init().riideBlack
        
        scrollView.scrollIndicatorInsets = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        
        
        backgroundVisualEffectView.alpha = 0
        
        getRiideButton.type = .LightButton
        getRiideButton.setTitle(getRiideButtonText, forState: .Normal)
        takeTestRiideButton.type = .OutlineLightButton
        takeTestRiideButton.setTitle(takeTestRiideButtonText, forState: .Normal)
        
        
        
        
        self.topBoxBottomToButtonConstraint.constant = 72
        self.topBoxBetweenButtonConstraint.constant = 32
        topBoxHeightConstraint.constant = UIScreen.mainScreen().bounds.height - (72 + 20)
        view.layoutIfNeeded()
    
        
        topBoxHeadline.attributedText = riideFontTheme.headlineExtraExtraLargeText(topBox1HeadlineText, color: riideColorTheme.init().riideWhite)
        
        topBoxHeadlineDes.attributedText = riideFontTheme.BodyText(topBox1HeadlineDesText, color: riideColorTheme.init().riideWhite)
    }

    override func viewDidAppear(animated: Bool) {
        
        UIApplication.sharedApplication().setStatusBarStyle(.LightContent, animated: true)
        UIView.animateWithDuration(0.2,
                                   delay: 0,
                                   options: .CurveEaseOut,
                                   animations: {
                                    
                                    self.xBtnButton.alpha = 1
                                    self.topBoxLeadingConstraint.constant = 0
                                    self.topBoxTrailingConstraint.constant = 0
                                    self.topBoxTopConstraint.constant = 0
                                    self.topBoxHeightConstraint.constant = UIScreen.mainScreen().bounds.height - (48 + 24 + 44 + 16 + 44)
                                    self.view.layoutIfNeeded()
                                   

                                    
            },
                                   completion: nil)
        UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseOut, animations: {
            self.topBoxBottomToButtonConstraint.constant = 0
            self.view.layoutIfNeeded()
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseOut, animations: {
            self.topBoxBetweenButtonConstraint.constant = 16
            self.view.layoutIfNeeded()
            }, completion: nil)

    }
    
    @IBAction func xBtnButtonDidTouch(sender: AnyObject) {
        UIApplication.sharedApplication().setStatusBarStyle(.Default, animated: true)
        
        UIApplication.sharedApplication().sendAction("topBox1TransitionBack:", to: nil, from: self, forEvent: nil)
        
        UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations:{
            
            self.wrapperLeadingConstraint.constant = 10
            self.wrapperTrailingConstraint.constant = 10
            self.wrapperTopConstraint.constant = 20
            self.wrapperBottomConstraint.constant = 72
            
            self.view.layoutIfNeeded()

            
            
                
            
            self.wrapperView.alpha = 0
            self.xBtnButton.alpha = 0
            }, completion: {
                (value : Bool) in
                self.dismissViewControllerAnimated(false, completion: nil)
                
        })
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let scrollOffset = scrollView.contentOffset.y
        let maxPositionAlpha = UIScreen.mainScreen().bounds.height / 3
        backgroundVisualEffectView.alpha = scrollOffset / maxPositionAlpha
        navbarView.alpha = scrollOffset / maxPositionAlpha
        print(scrollOffset)

    }
    
}
