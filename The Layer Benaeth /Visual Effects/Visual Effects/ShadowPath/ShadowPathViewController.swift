//
//  ViewController.swift
//  ShadowPath
//
//  Created by Mobile13 on 6/1/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit
//import QuartzCore


class ShadowPathViewController: UIViewController {

    @IBOutlet weak var layer1: UIView!
    @IBOutlet weak var layer2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //enable shadow
        layer1.layer.shadowOpacity = 0.5
        layer2.layer.shadowOpacity = 0.5
        
        //create square Shadow
        let squarePath = CGPathCreateMutable()
        CGPathAddRect(squarePath, nil, layer1.layer.bounds)
        self.layer1.layer.shadowPath = squarePath
        
        //create curcular shadow
        let circlePath = CGPathCreateMutable()
        CGPathAddEllipseInRect(circlePath, nil, layer2.bounds)
        self.layer2.layer.shadowPath = circlePath
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

