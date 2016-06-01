//
//  ViewController.swift
//  TheZAxis
//
//  Created by Mobile13 on 6/1/16.
//  Copyright © 2016 Mobile13. All rights reserved.
//

import UIKit

class TheZAxisViewController: UIViewController {

    @IBOutlet weak var grayView: UIView!
    @IBOutlet weak var redView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        grayView.layer.zPosition = 0.1
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

