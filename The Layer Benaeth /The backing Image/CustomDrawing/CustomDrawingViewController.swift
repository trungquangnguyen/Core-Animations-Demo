//
//  ViewController.swift
//  CustomDrawing
//
//  Created by Mobile13 on 6/1/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit
import QuartzCore


class CustomDrawingViewController: UIViewController {

    @IBOutlet weak var layerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //create sublayer
        let blueLayer = CALayer()
         blueLayer.frame = CGRectMake(50, 50, 100, 100)
        blueLayer.backgroundColor = UIColor.blueColor().CGColor
        
        //set controller as layer delegate
        blueLayer.delegate = self
        
        
        //ensure that the layer backing image user correct scale
        blueLayer.contentsScale = UIScreen.mainScreen().scale
        
        // add layer to view
        layerView.layer.addSublayer(blueLayer)
        
        //force layer to redraw
        blueLayer.display()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func drawLayer(layer: CALayer, inContext ctx: CGContext) {
        //draw a thick red circle
        CGContextSetLineWidth(ctx, 10.0)
        CGContextSetStrokeColorWithColor(ctx, UIColor.redColor().CGColor)
        CGContextStrokeEllipseInRect(ctx, layer.bounds)
    }
    
//    override func displayLayer(layer: CALayer) {
//    }


}

//extension CustomDrawingViewController: CALayerDelegate {
//Use undeclare CALayerDelegate
//}

