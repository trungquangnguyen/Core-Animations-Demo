//
//  ViewController.swift
//  GroupOpacity
//
//  Created by Mobile13 on 6/2/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit

class GroupOpacityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button1 = self.customButton()
        button1.center = CGPointMake(100, 150)
        self.view.addSubview(button1)
        
        let button2 = self.customButton()
        button2.center = CGPointMake(250, 150)
        button2.alpha = 0.5
        self.view.addSubview(button2)
        
        //enable rasterization for the translucent button
        /*Do not see how to apply*/
        button2.layer.shouldRasterize = true;
        button2.layer.rasterizationScale = UIScreen.mainScreen().scale
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     Custom button
     */
    func customButton() -> UIButton {
        //create button
        var frame = CGRectMake(0, 0, 150, 50)
        let button = UIButton(frame: frame)
        button.backgroundColor = UIColor.whiteColor()
        button.layer.cornerRadius = 10;
        
        //add label
        frame = CGRectMake(20, 10, 110, 30);
        let label = UILabel(frame: frame)
        label.text = "Hello World";
        label.textAlignment = .Center;
        button.addSubview(label)
        return button;
    }
    
    
}

