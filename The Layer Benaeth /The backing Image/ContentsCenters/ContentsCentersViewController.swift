//
//  ViewController.swift
//  ContentsCenters
//
//  Created by Mobile13 on 5/31/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit

class ContentsCentersViewController: UIViewController {
    
    let imageName = "image3.png"//"image2.jpg" "image3.png"
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let image =  UIImage(named: imageName)
        
        addStretchableImage(image!, withContentCenter: CGRectMake(0.25, 0.25, 0.5, 0.5), tolayer: button1.layer)
         addStretchableImage(image!, withContentCenter: CGRectMake(0.25, 0.25, 0.5, 0.5), tolayer: Button2.layer)
         addStretchableImage(image!, withContentCenter: CGRectMake(0.25, 0.25, 0.5, 0.5), tolayer: button3.layer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func addStretchableImage(image: UIImage, withContentCenter rect: CGRect, tolayer layer: CALayer){
        //set Image
        layer.contents = image.CGImage
        
        // setContentsLayer
        //This works in a similar way to the -resizableImageWithCapInsets: method of UIImage
        layer.contentsCenter = rect
    }

}

