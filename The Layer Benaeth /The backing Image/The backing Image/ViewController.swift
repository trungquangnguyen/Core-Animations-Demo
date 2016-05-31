//
//  ViewController.swift
//  The backing Image
//
//  Created by Mobile13 on 5/31/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "Snowman")
        
        //assign the image of a layer
        // add it directly to layerView
        //(__bridge id)image.CGImage in objective c
        layerView.layer.contents = image!.CGImage
        
        // center Image
        layerView.layer.contentsGravity = kCAGravityCenter
        
        // the contentScale to match Image 
        //        If contentsScale is set to 1.0, drawing will be done at a resolution of 1 pixel per point. If it is set to 2.0, drawing will be done at 2 pixels per point, a.k.a. Retina resolution.
        layerView.layer.contentsScale = image!.scale
//        layerView.layer.contentsScale = UIScreen.mainScreen().scale
        
        // equivalent clipsToBounds in UIView
        layerView.layer.masksToBounds = true
        
        //0..1
        layerView.layer.contentsRect  = CGRectMake(0.5, 0.5, 1, 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

