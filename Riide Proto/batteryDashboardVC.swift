//
//  batteryDashboardVC.swift
//  Riide Proto
//
//  Created by VIRAKRI JINANGKUL on 5/1/16.
//  Copyright © 2016 VIRAKRI JINANGKUL. All rights reserved.
//


import UIKit
import AVKit
import AVFoundation

let topBox1HeadlineText = "Riide\neverywhere."
let topBox1HeadlineDesText = "Be superhuman with electric power on demand. 20 mph. 25 mile range. Theft insurance included."

let topBox2HeadlineText = "Take a test Riide."
let topBox2HeadlineDesText = "Be superhuman with electric power on demand. 20 mph. 25 mile range. Theft insurance included."

let topBox3HeadlineText = "Your Riide is\nwaiting for you."
let topBox3HeadlineDesText = "No need to save up — RiidePass is the least expensive way to get around your city."

let topBox4HeadlineText = "Riide accessories"
let topBox4HeadlineDesText = "Be superhuman with electric power on demand. 20 mph. 25 mile range. Theft insurance included."

class batteryDashboardVC: UIViewController {
    
    @IBOutlet var batteryDrawingView: UIView!
    
    @IBOutlet var centerNumberConstraint: NSLayoutConstraint!
    
    @IBOutlet var batteryDrawingYContraint: NSLayoutConstraint!
    
    @IBOutlet var riideLogoTopConstraint: NSLayoutConstraint!
    
    @IBOutlet var centerBatteryStatusSmallTopTextConstraint: NSLayoutConstraint!
    
    @IBOutlet var dynamicBadgeHeightConstraint: NSLayoutConstraint!
    
    @IBOutlet var scrollContentView: UIView!
    
    @IBOutlet var riideLogoImage: UIImageView!
    
    @IBOutlet var topBox1View: UIView!
    @IBOutlet var topBox2View: UIView!
    @IBOutlet var topBox3View: UIView!
    @IBOutlet var topBox4View: UIView!
    
    @IBOutlet var topBox1ImageView: UIImageView!
    @IBOutlet var topBox2ImageView: UIImageView!
    @IBOutlet var topBox3ImageView: UIImageView!
    @IBOutlet var topBox4ImageView: UIImageView!
    
    //constraint Top Box1
    
    @IBOutlet var topBox1LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var topBox1TrailingConstraint: NSLayoutConstraint!
    @IBOutlet var topBox1TopConstraint: NSLayoutConstraint!
    @IBOutlet var topBox1BottomConstraint: NSLayoutConstraint!
    
    
    
    //constraint Top Box3
    
    @IBOutlet var topBox3LeadingConstraint: NSLayoutConstraint!
    @IBOutlet var topBox3TrailingConstraint: NSLayoutConstraint!
    @IBOutlet var topBox3TopConstraint: NSLayoutConstraint!
    @IBOutlet var topBox3BottomConstraint: NSLayoutConstraint!
    
    
    @IBOutlet var topContentView: UIView!
    
    let batteryLevel: CGFloat = 0.342
    
    let numberCircle: Int = 25
    let radCircleLargeSize: CGFloat = 5.0
    let radCircleSmallSize: CGFloat = 3.0
    let tanValue: CGFloat = 106
    
    let widthBetweenLinearCircle: CGFloat = 11.0
    
    var drawingLayer: CAShapeLayer!
    
    
    let drawingFrame: CGSize = CGSize(width: 240, height: 240)
    
    var grayCircleLayer = [CAShapeLayer]()
    var greenCircleLayer = [CAShapeLayer]()
    
    var ActualCircularPosition = [CGPoint]()
    var ActualLinearPosition = [CGPoint]()
    
    var centerYDrawingView: CGFloat!
    

    
//MARK: Text Outlet
    
    @IBOutlet var percentageNumberLabel: UILabel!
    
    @IBOutlet var percentageSymbolLabel: UILabel!
    
    @IBOutlet var batteryStatusTextLabel: UILabel!
    
    @IBOutlet var batteryStatusSmallTopTextLabel: UILabel!
    
    
    @IBOutlet var topBox1Headline: UILabel!
    @IBOutlet var topBox1HeadlineDes: UILabel!

    @IBOutlet var topBox2Headline: UILabel!
    @IBOutlet var topBox2HeadlineDes: UILabel!

    @IBOutlet var topBox3Headline: UILabel!
    @IBOutlet var topBox3HeadlineDes: UILabel!

    @IBOutlet var topBox4Headline: UILabel!
    @IBOutlet var topBox4HeadlineDes: UILabel!

     var player: AVPlayer?
    
    func loopVideo() {
        player?.seekToTime(kCMTimeZero)
        player?.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        



        
        
        grayCircleLayer=createShapeLayer(riideColorTheme.init().riideLightGray, circularPlacement: true)
        greenCircleLayer=createShapeLayer(riideColorTheme.init().riideGreen, circularPlacement: false)
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: 200, y: 200), radius: radCircleLargeSize, startAngle: 0.0, endAngle: CGFloat(M_PI * 2.0), clockwise: true)
        drawingLayer = CAShapeLayer()
        drawingLayer.path = circlePath.CGPath
        drawingLayer.fillColor = UIColor.blueColor().CGColor
//        batteryDrawingView.layer.addSublayer(drawingLayer)
        
        for i in 1...numberCircle {
            grayCircleLayer[i-1].addSublayer(greenCircleLayer[i-1])
        }
        
        for i in 1...numberCircle {
            batteryDrawingView.layer.addSublayer(grayCircleLayer[i-1])
            
        }
        
        
        print(floor(batteryLevel * CGFloat(numberCircle)))
        print((batteryLevel * CGFloat(numberCircle))-floor(batteryLevel * CGFloat(numberCircle)))
        
        ActualCircularPosition = createActualCircularPosition()
        ActualLinearPosition = createActualLinearPosition()
        
        percentageNumberLabel.attributedText = riideFontTheme.headlineJumboText(NSString(format: "%.01f", batteryLevel) as String, weight: .Regular, alignment: .Center, enableLineSpacing: false)
        
        percentageSymbolLabel.attributedText = riideFontTheme.headlineExtraLargeText("%", weight: .Bold, alignment: .Center, enableLineSpacing: false)
        batteryStatusTextLabel.attributedText = riideFontTheme.BodyText("Battery is fucking awesome!", color: riideColorTheme.riideInkPrimaryColor(), alignment: .Center, enableLineSpacing: false)
        
        batteryStatusSmallTopTextLabel.attributedText = riideFontTheme.BodyText(NSString(format: "Riide Battery: %.01f%", batteryLevel) as String, color: riideColorTheme.riideInkPrimaryColor(), alignment: .Center, enableLineSpacing: false)
        view.backgroundColor = riideColorTheme.init().riideWhisperGray
        
        topBox1Headline.attributedText = riideFontTheme.headlineExtraExtraLargeText(topBox1HeadlineText, color: riideColorTheme.init().riideWhite)
        
        topBox1HeadlineDes.attributedText = riideFontTheme.BodyText(topBox1HeadlineDesText, color: riideColorTheme.init().riideWhite)
        
        topBox2Headline.attributedText = riideFontTheme.headlineExtraExtraLargeText(topBox2HeadlineText, color: riideColorTheme.init().riideWhite)
        
        topBox2HeadlineDes.attributedText = riideFontTheme.BodyText(topBox2HeadlineDesText, color: riideColorTheme.init().riideWhite)
        
        topBox3Headline.attributedText = riideFontTheme.headlineExtraExtraLargeText(topBox3HeadlineText)
        
        topBox3HeadlineDes.attributedText = riideFontTheme.BodyText(topBox3HeadlineDesText, color: riideColorTheme.init().riideBlack)
        
        topBox4Headline.attributedText = riideFontTheme.headlineExtraExtraLargeText(topBox4HeadlineText)
        
        topBox4HeadlineDes.attributedText = riideFontTheme.BodyText(topBox4HeadlineDesText, color: riideColorTheme.init().riideBlack)
        
        
    }
    var topBox1RectSize = CGRect()
    var playerLayer = AVPlayerLayer()
    let overlayLayer = CALayer()
    override func viewDidAppear(animated: Bool) {
        
        topBox1RectSize = topBox1View.bounds
        topBox1View.layer.insertSublayer(createLayerShadow(topBox1View.bounds), atIndex: 0)
        topBox2View.layer.insertSublayer(createLayerShadow(topBox2View.bounds), atIndex: 0)
        topBox3View.layer.insertSublayer(createLayerShadow(topBox3View.bounds), atIndex: 0)
        topBox4View.layer.insertSublayer(createLayerShadow(topBox4View.bounds), atIndex: 0)
        
        let videoURL: NSURL = NSBundle.mainBundle().URLForResource("riide_background", withExtension: "mp4")!
        
        player = AVPlayer(URL: videoURL)
        player?.actionAtItemEnd = .None
        player?.muted = true
        
        playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
        playerLayer.zPosition = -1
        
        playerLayer.frame = topBox1View.bounds
        overlayLayer.frame = topBox1View.bounds
        overlayLayer.backgroundColor = UIColor(patternImage: UIImage(named: "landingBackground")!).CGColor

        
        topBox1ImageView.layer.addSublayer(playerLayer)
        topBox1ImageView.layer.addSublayer(overlayLayer)
//        topBox1ImageView.layer.insertSublayer(playerLayer, atIndex: 0)
        
        topBox1ImageView.backgroundColor = UIColor(patternImage: UIImage(named: "landingBackground")!)
        
        player?.play()
        
        //loop video
        NSNotificationCenter.defaultCenter().addObserver(self,
                                                         selector: "loopVideo",
                                                         name: AVPlayerItemDidPlayToEndTimeNotification,
                                                         object: nil)

        
    }
    
    @IBAction func topBox1ButtonDidTouch(sender: AnyObject) {
        print("FUCK")

        
        topBox1Headline.alpha = 0
        topBox1HeadlineDes.alpha = 0
        customCAAnimations(0.2,
                           timingFunction: CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut),
                           animation: {
            self.playerLayer.frame = self.view.bounds
            self.overlayLayer.frame = self.view.bounds

        })
        
        
        
        
        UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
            
            self.topBox1LeadingConstraint.constant = 0
            self.topBox1TrailingConstraint.constant = 0
            self.topBox1TopConstraint.constant = 0
            self.topBox1BottomConstraint.constant = 0
            
            self.topBox1View.layoutIfNeeded()
            }, completion: nil)
        
        self.performSegueWithIdentifier("segueToTopBox1Modal", sender: sender)
        
        
    }
    
    func topBox1TransitionBack(sender: AnyObject) {
        
        topBox1Headline.alpha = 0
        topBox1HeadlineDes.alpha = 0
        customCAAnimations(0.2,
                           timingFunction: CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut),
                           animation: {
                            self.playerLayer.frame = self.topBox1RectSize
                            self.overlayLayer.frame = self.topBox1RectSize
                            
        })
        
        UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
            
            self.topBox1LeadingConstraint.constant = 10
            self.topBox1TrailingConstraint.constant = 10
            self.topBox1TopConstraint.constant = 20
            self.topBox1BottomConstraint.constant = 72
            
            self.topBox1View.layoutIfNeeded()
            
            }, completion: nil)
        self.topBox1Headline.transform = CGAffineTransformMakeTranslation(0, -24)
        self.topBox1HeadlineDes.transform = CGAffineTransformMakeTranslation(0, -24)
        UIView.animateWithDuration(0.15, delay: 0.2, options: .CurveEaseOut, animations: {
            self.topBox1Headline.alpha = 1
            self.topBox1Headline.transform = CGAffineTransformMakeTranslation(0, 0)
            
            }, completion: nil)
        UIView.animateWithDuration(0.1, delay: 0.2, options: .CurveEaseOut, animations: {
            self.topBox1HeadlineDes.alpha = 1
            self.topBox1HeadlineDes.transform = CGAffineTransformMakeTranslation(0, 0)
            }, completion: nil)
    }
    
    //MARK: Constraint for topBox3
    
    


    @IBOutlet var topBox3ImageCenterXBigConstraint: NSLayoutConstraint!
    
    @IBOutlet var topBox3ImageCenterYBigConstraint: NSLayoutConstraint!
    
    @IBOutlet var topBox3ImageHeightConstraint: NSLayoutConstraint!

    @IBOutlet var topBox3ImageCenterXConstraint: NSLayoutConstraint!
    
    @IBOutlet var topBox3ImageWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet var topBox3ImageTopConstraint: NSLayoutConstraint!
    
    @IBOutlet var topBox3UnderlayImage: UIImageView!
    @IBAction func topBox3ButtonDidTouch(sender: AnyObject) {
        
        
        UIView.animateWithDuration(0.2, delay: 0, options: .CurveEaseOut, animations: {
            
            
            
            self.topBox3LeadingConstraint.constant = 0
            self.topBox3TrailingConstraint.constant = 0
            self.topBox3TopConstraint.constant = 0
            self.topBox3BottomConstraint.constant = 0
            
            self.topBox3View.layoutIfNeeded()
            self.topBox3Headline.alpha = 0
            self.topBox3HeadlineDes.alpha = 0
            }, completion: nil)
        
        UIView.animateWithDuration(0.4, delay: 0, options: .CurveEaseOut, animations: {
            
            self.topBox3ImageCenterXBigConstraint.priority = 900
            self.topBox3ImageCenterYBigConstraint.priority = 900
            self.topBox3ImageWidthConstraint.priority = 900
            
            
            
            self.topBox3ImageCenterXConstraint.priority = 999
            self.topBox3ImageHeightConstraint.priority = 999
            self.topBox3ImageTopConstraint.priority = 999
            
            self.topBox3View.layoutIfNeeded()
            }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay: 0.2, options: .CurveEaseOut, animations: {
            self.topBox3UnderlayImage.alpha = 1
            }, completion: nil)
        


        
    }
    
    @IBOutlet var mainScrollView: UIScrollView!
    
    @IBAction func buttonToBatteryDidTouch(sender: AnyObject) {

        self.mainScrollView.setContentOffset(CGPoint(x: 0, y: UIScreen.mainScreen().bounds.height), animated: true)
//        self.mainScrollView.contentOffset = CGPoint(x: 0, y: UIScreen.mainScreen().bounds.height)

        //        scrollv
    }
    
    @IBAction func buttonToTopMenuDidTouch(sender: AnyObject) {
        
        self.mainScrollView.setContentOffset(CGPoint(x: 0, y:0), animated: true)
        
    }
    
    
    
    
    
    
//MARK: Function area
 
    func createLayerShadow(rect: CGRect) -> CALayer{
        let layerOutput = CALayer()
        let shadowShape = UIBezierPath(rect: rect).CGPath
        
        let shadowLayer1 = CAShapeLayer()
        //                shadowLayer1.frame = CGRect(x: 0, y: 0, width: topBox1View.frame.width, height: topBox1View.frame.height)
        shadowLayer1.shadowPath = shadowShape
        shadowLayer1.backgroundColor = UIColor.clearColor().CGColor
        shadowLayer1.shadowColor = riideColorTheme.init().riideBlack.colorWithAlphaComponent(0.24).CGColor
        shadowLayer1.shadowOffset = CGSize(width: 0, height: 0)
        shadowLayer1.shadowRadius = 2
        shadowLayer1.shadowOpacity = 1
        
        
        let shadowLayer2 = CAShapeLayer()
        //        shadowLayer2.frame = CGRect(x: 0, y: 0, width: topBox1View.frame.width, height: topBox1View.frame.height)
        shadowLayer2.shadowPath = shadowShape
        shadowLayer2.backgroundColor = UIColor.clearColor().CGColor
        shadowLayer2.shadowColor = riideColorTheme.init().riideBlack.colorWithAlphaComponent(0.24).CGColor
        shadowLayer2.shadowOffset = CGSize(width: 0, height: 2)
        shadowLayer2.shadowRadius = 2
        shadowLayer2.shadowOpacity = 1
        
        
        
        layerOutput.addSublayer(shadowLayer1)
        layerOutput.addSublayer(shadowLayer2)
        layerOutput.masksToBounds = false
        layerOutput.rasterizationScale = UIScreen.mainScreen().scale
        layerOutput.shouldRasterize = true
        return layerOutput
        
    }
    
    override func viewWillAppear(animated: Bool) {
        riideLogoImage.alpha = 0
        view.backgroundColor = riideColorTheme.init().riideWhite
        batteryDrawingView.alpha = 0
        dynamicBadgeHeightConstraint.constant = 0
//        self.riideLogoTopConstraint.constant = 24
        self.scrollContentView.alpha = 0
        
            self.riideLogoImage.transform = CGAffineTransformMakeTranslation(0, -16)
            self.batteryDrawingView.transform = CGAffineTransformMakeTranslation(0, -16)
            self.scrollContentView.transform = CGAffineTransformMakeTranslation(0, 35)
        

        
        UIView.animateWithDuration(0.2, animations: {
        self.view.backgroundColor = riideColorTheme.init().riideWhisperGray
                    })
        UIView.animateWithDuration(0.2,
                                   delay: 0.0,
                                   options: .CurveEaseOut,
                                   animations: {
                                    self.riideLogoImage.alpha = 1
                                self.riideLogoImage.transform = CGAffineTransformMakeTranslation(0, 0)
                                    
                                    
            },
                                   completion: nil)
        UIView.animateWithDuration(0.2,
                                   delay: 0.05,
                                   options: .CurveEaseOut,
                                   animations: {
                                    self.batteryDrawingView.alpha = 1
                                    self.batteryDrawingView.transform = CGAffineTransformMakeTranslation(0, 0)
                                    
                                    
            },
                                   completion: nil)
        
        UIView.animateWithDuration(0.3,
                                   delay: 0.1,
                                   options: .CurveEaseOut,
                                   animations: {
                                    self.scrollContentView.alpha = 1
                                    self.scrollContentView.transform = CGAffineTransformMakeTranslation(0, 0)
                                    
            },
                                   completion: nil)
        
        self.batteryLevelSet(0.452)
        self.transitionLinearToCircular(0)
                                    
        
        
    }
    
    
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        let scrollOffset = scrollView.contentOffset.y
        let maxScroll = view.frame.height*2
        let scrollPercentage = scrollOffset/maxScroll
        
        
        moveThingsUpDown(CGFloat(scrollPercentage))
//        transitionLinearToCircular(CGFloat(scrollPercentage))
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calDegree() -> CGFloat {
        return 270 / CGFloat(numberCircle - 1)
    }
    
    func calCircleTuple() -> [(x: CGFloat, y: CGFloat)] {
        var tupleArray = [(x: CGFloat, y: CGFloat)]()
        var currentDegree: CGFloat = 225
        for i in 1...numberCircle {
            
            
        
            let x:CGFloat = cos(currentDegree * CGFloat(M_PI) / 180.0)
            let y:CGFloat = sin(currentDegree * CGFloat(M_PI) / 180.0)
            tupleArray.append((x: x, y: y))
            
            currentDegree = currentDegree - calDegree()
        }
        
        return tupleArray
    }
    
    func createActualCircularPosition() -> [CGPoint] {
        
        let circleCircularPosition = calCircleTuple()
        var dummyTupple = [CGPoint]()
        for i in 1...numberCircle {
            let x = (drawingFrame.width / 2) + (circleCircularPosition[i - 1].x * tanValue) - radCircleLargeSize
            let y = (drawingFrame.height / 2) - (circleCircularPosition[i - 1].y * tanValue) - radCircleLargeSize
            dummyTupple.append(CGPoint(x: x, y: y))
        }
        return dummyTupple
    }
    
    func createActualLinearPosition() -> [CGPoint] {

        var dummyTupple = [CGPoint]()
        for i in 1...numberCircle {
            let x = (drawingFrame.width / 2) + CGFloat((i-1) - ( numberCircle / 2)) * widthBetweenLinearCircle
            print(x)
            let y = (drawingFrame.height / 2) - radCircleLargeSize
            dummyTupple.append(CGPoint(x: x, y: y))
        }
        return dummyTupple
    }
    
    func createShapeLayer(color: UIColor, circularPlacement: Bool) -> [CAShapeLayer] {
        let circleCircularPosition = calCircleTuple()
        var CircleLayers = [CAShapeLayer]()
        
        for i in 1...numberCircle {
            var x: CGFloat!
            var y: CGFloat!
            if circularPlacement {
                x = (drawingFrame.width / 2) + (circleCircularPosition[i - 1].x * tanValue)
            
                y = (drawingFrame.height / 2) - (circleCircularPosition[i - 1].y * tanValue)
            }
            else {
                x = radCircleLargeSize
                y = radCircleLargeSize
            }
            
            let circlePath = UIBezierPath(arcCenter: CGPoint(x: radCircleLargeSize, y: radCircleLargeSize), radius: radCircleLargeSize, startAngle: 0.0, endAngle: CGFloat(M_PI * 2.0), clockwise: true)
            
            CircleLayers.append(CAShapeLayer())
            CircleLayers[CircleLayers.count-1].frame = CGRectMake(x - radCircleLargeSize, y - radCircleLargeSize, radCircleLargeSize * 2, radCircleLargeSize * 2)
            //            grayCircleLayer[grayCircleLayer.count-1].backgroundColor = UIColor.blackColor().CGColor
            CircleLayers[CircleLayers.count-1].path = circlePath.CGPath
            CircleLayers[CircleLayers.count-1].fillColor = color.CGColor
            
            //            grayCircleLayer[grayCircleLayer.count-1].fillColor = UIColor.blackColor().CGColor
            
            
            
        }
        return CircleLayers
    }
    
    func batteryLevelSet(percentage: CGFloat){
        
        var statusColor: UIColor = riideColorTheme.init().riideGreen
        batteryStatusSmallTopTextLabel.attributedText = riideFontTheme.BodyText(NSString(format: "Riide Battery: %.0f%%", percentage * 100) as String, color: riideColorTheme.riideInkSecondaryColor(), alignment: .Center, enableLineSpacing: false)
        percentageNumberLabel.attributedText = riideFontTheme.headlineJumboText(NSString(format: "%.0f", percentage * 100) as String, weight: .Regular, alignment: .Center, enableLineSpacing: false)
        percentageSymbolLabel.attributedText = riideFontTheme.headlineExtraLargeText("%", weight: .Bold, alignment: .Center, enableLineSpacing: false)
        batteryStatusTextLabel.attributedText = riideFontTheme.BodyText("Plenty battery, Go Riide!!", color: riideColorTheme.riideInkPrimaryColor(), alignment: .Center, enableLineSpacing: false)
        
        if percentage > 0.99 {
           percentageNumberLabel.attributedText = riideFontTheme.headlineJumboText(NSString(format: "%.0f", percentage * 100) as String, weight: .Regular, alignment: .Center, enableLineSpacing: false)
        }
        
        if percentage < 0.20 {
            statusColor = riideColorTheme.init().riideOrange
            
            batteryStatusTextLabel.attributedText = riideFontTheme.BodyText("Battery is running low!", color: riideColorTheme.init().riideOrange , alignment: .Center, enableLineSpacing: false)
        }
        
        if percentage < 0.10 {
            statusColor = riideColorTheme.init().riideRed
            
            batteryStatusTextLabel.attributedText = riideFontTheme.BodyText("Battery is running very low!",
                                                                            color: riideColorTheme.init().riideRed , alignment: .Center, enableLineSpacing: false)
        }
        
        if percentage < 0.20 {
            batteryStatusSmallTopTextLabel.attributedText = riideFontTheme.BodyText(NSString(format: "Riide Battery: %.0f%%", percentage * 100) as String, color: statusColor, alignment: .Center, enableLineSpacing: false)
            percentageNumberLabel.attributedText = riideFontTheme.headlineJumboText(NSString(format: "%.0f", percentage * 100) as String,
                                                                                    color: statusColor ,weight: .Regular,
                                                                                    alignment: .Center,
                                                                                    enableLineSpacing: false)
            percentageSymbolLabel.attributedText = riideFontTheme.headlineExtraLargeText("%",
                                                                                         color: statusColor ,
                                                                                         weight: .Bold, alignment: .Center,
                                                                                         enableLineSpacing: false)
        }
        
        if percentage < 0.01 {
            percentageNumberLabel.attributedText = riideFontTheme.headlineJumboText(NSString(format: "%.0f", percentage * 100) as String,color: statusColor ,weight: .Regular, alignment: .Center, enableLineSpacing: false)
        }
        
        batteryDrawingView.layoutIfNeeded()
        
        withoutCAAnimations {
            let fullCircle = Int(floor(percentage * CGFloat(self.numberCircle)))
            let startHiddenCircle = Int(ceil(percentage * CGFloat(self.numberCircle)) + 1)
            let scaleCircle = CGFloat((percentage * CGFloat(self.numberCircle))-floor(percentage * CGFloat(self.numberCircle)))
            
            if fullCircle <= self.greenCircleLayer.count - 1 {
                print(fullCircle)
                self.greenCircleLayer[fullCircle].hidden = false
                self.greenCircleLayer[fullCircle].transform = CATransform3DMakeScale(scaleCircle, scaleCircle, 1)
                self.greenCircleLayer[fullCircle].fillColor = statusColor.CGColor
            }
            //        var startHiddenCircle = fullCircle + 2
            //        if startHiddenCircle > numberCircle {
            //            startHiddenCircle = numberCircle
            //        }
            if fullCircle >= 1 {
                for i in 1...fullCircle  {
                    self.greenCircleLayer[i-1].hidden = false
                    self.greenCircleLayer[i-1].transform = CATransform3DMakeScale(1, 1, 1)
                    self.greenCircleLayer[i-1].fillColor = statusColor.CGColor
                }
            }
            if startHiddenCircle<self.numberCircle{
                for i in startHiddenCircle...self.numberCircle {
                    self.greenCircleLayer[i-1].hidden = true
                    self.greenCircleLayer[i-1].fillColor = statusColor.CGColor
                }
            }
            
        }
    }
    
    
    func moveThingsUpDown(value: CGFloat){
        
        
        if value > 0.5 {
            let valueMore = value * 2 - 1
            let moveUpDistance = view.frame.height * 0.763932/2 - 42
            print (moveUpDistance)
            batteryDrawingYContraint.constant = -valueMore * moveUpDistance
            
            riideLogoTopConstraint.constant = 34 - valueMore * moveUpDistance/16
            
            riideLogoImage.alpha = (0.5 - valueMore) * 2
            
            centerNumberConstraint.constant = 12 + valueMore * 48
            centerBatteryStatusSmallTopTextConstraint.constant = 16 - (1 -  valueMore) * 48
            riideLogoImage.layoutIfNeeded()
            batteryDrawingView.layoutIfNeeded()
            
            batteryStatusSmallTopTextLabel.alpha = valueMore * 3 - 2
            batteryStatusTextLabel.alpha = (1 -  valueMore) * 2 - 1
            percentageNumberLabel.alpha = (1 -  valueMore) * 2 - 1
            percentageSymbolLabel.alpha = (1 -  valueMore) * 2 - 1
            
            
            dynamicBadgeHeightConstraint.constant = (1 - valueMore) * 144 - 64
            scrollContentView.layoutIfNeeded()
            transitionLinearToCircular(valueMore)
        }
        else if value <= 0.5 {
            let valueLess = abs(value - 0.5) * 2
            
            topContentView.alpha = valueLess * 2 - 1
            
            riideLogoImage.alpha = (0.5 - valueLess) * 2
            batteryStatusSmallTopTextLabel.alpha = valueLess * 3 - 2
            batteryStatusTextLabel.alpha = (1 -  valueLess) * 2 - 1
            percentageNumberLabel.alpha = (1 -  valueLess) * 2 - 1
            percentageSymbolLabel.alpha = (1 -  valueLess) * 2 - 1
            
            
            let moveDownDistance = view.frame.height * 1.236068/2 - 20
            print (moveDownDistance)
            batteryDrawingYContraint.constant = valueLess * moveDownDistance
            
            riideLogoTopConstraint.constant = 34 + valueLess * moveDownDistance * 1.5
            
            
            riideLogoImage.layoutIfNeeded()
            batteryDrawingView.layoutIfNeeded()
            scrollContentView.layoutIfNeeded()
            transitionLinearToCircular(valueLess)
        }
    }
    
    
    func transitionLinearToCircular(value: CGFloat){
        
//        batteryDrawingView.transform = CGAffineTransformMakeTranslation(0, -value * (centerYDrawingView - 36))
        
        withoutCAAnimations{
        let circleCircularPosition = self.calCircleTuple()
        let scaleRatio = self.radCircleSmallSize / self.radCircleLargeSize
        let scaleValue = 1 - ((1 - scaleRatio) * value)
        let negativeValue = 1 - value
        for i in 1...self.numberCircle {
            let halfFrameWidth = self.drawingFrame.width/2
            let calXValue = (self.ActualCircularPosition[i-1].x - halfFrameWidth) * negativeValue + (self.ActualLinearPosition[i-1].x - halfFrameWidth) * value + halfFrameWidth
            let calYValue = self.ActualCircularPosition[i-1].y * negativeValue + self.ActualLinearPosition[i-1].y * value
            
            self.grayCircleLayer[i-1].position.x = calXValue
            self.grayCircleLayer[i-1].position.y = calYValue
            self.grayCircleLayer[i-1].transform = CATransform3DMakeScale(scaleValue, scaleValue, 1)
        }
        }
    }
    
    func withoutCAAnimations(closure: () -> ()) {
        CATransaction.begin()
        CATransaction.setValue(kCFBooleanTrue, forKey: kCATransactionDisableActions)
        closure()
        CATransaction.commit()
    }
    
    func customCAAnimations(duration: CFTimeInterval = 0.2,
                              timingFunction: CAMediaTimingFunction = CAMediaTimingFunction(name: "kCAMediaTimingFunctionDefault"),
                              animation: () -> ()) {
        CATransaction.begin()
        CATransaction.setAnimationDuration(duration)
        CATransaction.setAnimationTimingFunction(timingFunction)
        animation()
        CATransaction.commit()
    }
    
    @IBAction func valueChange(sender: UISlider) {
        let selectedValue = Float(sender.value)
        batteryLevelSet(CGFloat(selectedValue))
    }
    
    @IBAction func value2Change(sender: UISlider) {
        let selectedValue = Float(sender.value)
        transitionLinearToCircular(CGFloat(selectedValue))
    }
    
    @IBAction func buttonDidTouch(sender: AnyObject) {
        grayCircleLayer[0].position.x = 0
        print(grayCircleLayer[0].position.x)
    }
    


}
