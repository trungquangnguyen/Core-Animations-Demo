//
//  ViewController.swift
//  LayerGeometry
//
//  Created by Mobile13 on 6/1/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var minuteHandImg: UIImageView!
    @IBOutlet weak var hourHandImg: UIImageView!
    @IBOutlet weak var secondHandImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // adjust anchor Points
        hourHandImg.layer.anchorPoint = CGPointMake(0.5, 0.8)
        minuteHandImg.layer.anchorPoint = CGPointMake(0.5, 0.8)
        secondHandImg.layer.anchorPoint = CGPointMake(0.5, 0.8)
        //start Timer
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "tick", userInfo: nil, repeats: true)
        //        self.tick()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tick(){
        //comvert time to hour, minute, second
        let dateNow = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let hour = CGFloat(calendar.component(NSCalendarUnit.Hour, fromDate: dateNow))
        let minute = CGFloat(calendar.component(NSCalendarUnit.Minute, fromDate: dateNow))
        let second = CGFloat(calendar.component(NSCalendarUnit.Second, fromDate: dateNow))

        // conver  hour, minute, second to Angle
        let angleHour = M_PI * 2 * Double(hour / 12.0)
        let angleMinute = M_PI * 2 * Double(minute / 60.0)
        let angleSecond = M_PI * 2 * Double(second / 60.0)
        
        print(angleSecond)
        //rotate hand
        hourHandImg.transform = CGAffineTransformMakeRotation(CGFloat(angleHour))
        minuteHandImg.transform = CGAffineTransformMakeRotation(CGFloat(angleMinute))
        secondHandImg.transform = CGAffineTransformMakeRotation(CGFloat(angleSecond))
        }
}

