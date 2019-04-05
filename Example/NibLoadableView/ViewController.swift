//
//  ViewController.swift
//  NibLoadableView
//
//  Created by erusso1 on 04/05/2019.
//  Copyright (c) 2019 erusso1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var customView: CustomView! {
        
        didSet {
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.customView.configureFor(title: "Hey there buddy", image: UIImage(named: "clock"))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

