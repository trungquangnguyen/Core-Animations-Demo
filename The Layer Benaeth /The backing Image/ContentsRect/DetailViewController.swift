//
//  DetailViewController.swift
//  ContentsRect
//
//  Created by Mobile13 on 5/31/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var coneView: UIView!
    @IBOutlet weak var shipView: UIView!
    @IBOutlet weak var iglooView: UIView!
    @IBOutlet weak var anchorView: UIView!



    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "Sprites")
        
        addSpriteImage(image!, withContentsRect: CGRectMake(0, 0, 0.5, 0.5), tolayer: iglooView.layer)
        addSpriteImage(image!, withContentsRect: CGRectMake(0.5, 0, 0.5, 0.5), tolayer: coneView.layer)
        addSpriteImage(image!, withContentsRect: CGRectMake(0, 0.5, 0.5, 0.5), tolayer: anchorView.layer)
        addSpriteImage(image!, withContentsRect: CGRectMake(0.5, 0.5, 0.5, 0.5), tolayer: shipView.layer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addSpriteImage(image: UIImage, withContentsRect rect: CGRect, tolayer layer: CALayer){
        //set Image
        layer.contents = image.CGImage
        
        //scale contents to Fit
        layer.contentsGravity = kCAGravityResizeAspect
        
        //set contentsRect
        layer.contentsRect = rect
    }
    
}

