//
//  controlPanelVC.swift
//  Riide Proto
//
//  Created by VIRAKRI JINANGKUL on 5/8/16.
//  Copyright © 2016 VIRAKRI JINANGKUL. All rights reserved.
//
var batteryStatusValue:Float = 0.602
var bluetoothStatusValue: Int = 0
var environmentSimValue: Int = 1

import UIKit

class controlPanelVC: UIViewController {
    
    @IBOutlet var subtitleLabel: UILabel!
    
    @IBOutlet var batteryLevelLabel: UILabel!
    
    @IBOutlet var bluetoothStatusLabel: UILabel!
    
    @IBOutlet var environmentLabel: UILabel!
    
    @IBOutlet var batteryLevelPercentageLabel: UILabel!
    @IBOutlet var saveButton: riideButton!
    
    @IBOutlet var batterySlider: UISlider!
    
    @IBOutlet var bluetoothSegment: UISegmentedControl!
    
    @IBOutlet var environmentSegment: UISegmentedControl!
    
    var thisStatusBarStyle:UIStatusBarStyle!
    
    override func viewDidLoad() {
        
        batterySlider.value = batteryStatusValue
        bluetoothSegment.selectedSegmentIndex = bluetoothStatusValue
        environmentSegment.selectedSegmentIndex = environmentSimValue
        
        thisStatusBarStyle = UIApplication.sharedApplication().statusBarStyle
        subtitleLabel.attributedText = riideFontTheme.headlineSmallText("Design Prototype Control Panel", weight: .Bold, enableLineSpacing: false)
        batteryLevelLabel.attributedText = riideFontTheme.BodySmallText("Battery Level")
        batteryLevelPercentageLabel.attributedText = riideFontTheme.BodySmallText(NSString(format: "%.1f%%",batterySlider.value*100) as String, alignment: .Right)
        bluetoothStatusLabel.attributedText = riideFontTheme.BodySmallText("Riide Bluetooth Status")
        environmentLabel.attributedText = riideFontTheme.BodySmallText("Environment Simulation")
        
        saveButton.type = .DarkButton
        
        var segmentFont = riideFontTheme().headlineSmall
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 0
        segmentFont[NSParagraphStyleAttributeName] = paragraphStyle
        
        bluetoothSegment.setTitleTextAttributes(segmentFont, forState: .Normal)
        environmentSegment.setTitleTextAttributes(segmentFont, forState: .Normal)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIApplication.sharedApplication().setStatusBarStyle(.LightContent, animated: true)
    }
    
    override func viewWillDisappear(animated: Bool) {
        UIApplication.sharedApplication().setStatusBarStyle(thisStatusBarStyle, animated: true)
    }

    @IBAction func batterySliderDidChange(sender: AnyObject) {
        batteryLevelPercentageLabel.attributedText = riideFontTheme.BodySmallText(NSString(format: "%.1f%%",batterySlider.value*100) as String, alignment: .Right)
    }
    
    @IBAction func saveButtonDidTouch(sender: AnyObject) {
         batteryStatusValue = batterySlider.value
         bluetoothStatusValue = bluetoothSegment.selectedSegmentIndex
         environmentSimValue = environmentSegment.selectedSegmentIndex
        
    }
    
}

func gestureToControlPanel(target: AnyObject, view: UIView){
    let tapRec = UITapGestureRecognizer(target: target, action: Selector("handleTap:"))
    tapRec.numberOfTouchesRequired = 4
//    tapRec.delegate = self

    
    view.addGestureRecognizer(tapRec)

}

func handleTap(sender: UITapGestureRecognizer? = nil) {
    print("HEYYY DUDE")
    //        let modalViewController = controlPanelVC()
    //        modalViewController.modalPresentationStyle = .OverCurrentContext
    //        target.presentViewController(modalViewController, animated: true, completion: nil)
}
