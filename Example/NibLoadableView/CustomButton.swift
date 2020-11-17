//
//  CustomButton.swift
//  NibLoadableView_Example
//
//  Created by Ephraim Russo on 11/16/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import NibLoadableView

class CustomButton: NibLoadbaleControl {
    
    override func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) {
        
        print(#function)
    }
}
