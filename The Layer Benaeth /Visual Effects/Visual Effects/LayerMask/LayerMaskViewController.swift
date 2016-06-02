//
//  ViewController.swift
//  LayerMask
//
//  Created by Mobile13 on 6/2/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit

class LayerMaskViewController: UIViewController {

    @IBOutlet weak var maskImg: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create maskLayer
        let maskLayer = CALayer()
        maskLayer.frame = maskImg.bounds
        let image = UIImage(named: "Cone")
        maskLayer.contents = image?.CGImage
        
        //Apply mask to  image
        maskImg.layer.mask = maskLayer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

