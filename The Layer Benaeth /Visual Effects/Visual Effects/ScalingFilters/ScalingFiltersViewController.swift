//
//  ViewController.swift
//  ScalingFilters
//
//  Created by Mobile13 on 6/2/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit

class ScalingFiltersViewController: UIViewController {

    @IBOutlet var digitViews: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "Digits")
        for view in digitViews {
           view.layer.contents = image?.CGImage
            view.layer.contentsRect = CGRectMake(0, 0, 0.1, 1)
            view.layer.contentsGravity = kCAGravityResizeAspect
            view.layer.magnificationFilter = kCAFilterNearest
        }
        
        NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "tick", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     Set Digit for layer
     */
    func setDigit(digit: Int, forlayer layer: CALayer){
        //adjust contentsRect to select corect digit
        layer.contentsRect = CGRectMake(CGFloat(Double(digit) * 0.1), 0, 0.1, 1)
    }
    
    func tick(){
        //comvert time to hour, minute, second
        let dateNow = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let hour = CGFloat(calendar.component(NSCalendarUnit.Hour, fromDate: dateNow))
        let minute = CGFloat(calendar.component(NSCalendarUnit.Minute, fromDate: dateNow))
        let second = CGFloat(calendar.component(NSCalendarUnit.Second, fromDate: dateNow))
        
        // Set hour, minute, second
        setDigit(Int(hour) / 10, forlayer: digitViews[0].layer)
        setDigit(Int(hour) % 10, forlayer: digitViews[1].layer)
        
        setDigit(Int(minute) / 10, forlayer: digitViews[2].layer)
        setDigit(Int(minute) % 10, forlayer: digitViews[3].layer)
        
        setDigit(Int(second) / 10, forlayer: digitViews[4].layer)
        setDigit(Int(second) % 10, forlayer: digitViews[5].layer)
    }
}

