//
//  ViewController.swift
//  HitTest
//
//  Created by Mobile13 on 6/1/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit

class HitTestViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    var blueLayer: CALayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //create sublayer
        blueLayer = CALayer()
        blueLayer.frame = CGRectMake(50, 50, 100, 100)
        blueLayer.backgroundColor = UIColor.blueColor().CGColor
        
        //add layer to view
        layerView.layer.addSublayer(blueLayer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //get touch position relative in main view
        var point = touches.first?.locationInView(self.view)
        
        //convert point layerView coordinates
        point = self.layerView.layer.convertPoint(point!, fromLayer: self.view.layer)
        
        // get layer using containsPoint
        if self.layerView.layer.containsPoint(point!) == true {
            //get touch layer
            let layer = self.blueLayer.hitTest(point!)
            
            //get layer using Hittest
            if layer == blueLayer {
                print("point in blueLayer")
            }else{
                print("point in layerView but not in bluelayer")
            }
        }else{
            print("point not in layerView")
        }
    }
    
}

