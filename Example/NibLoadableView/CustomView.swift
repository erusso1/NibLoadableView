//
//  CustomView.swift
//  NibLoadableView_Example
//
//  Created by Ephraim Russo on 4/5/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation
import NibLoadableView

class CustomView: NibLoadableView {
    
    @IBOutlet private weak var titleLabel: UILabel! {
        
        didSet {
            
            titleLabel.textColor = .white
        }
    }
    
    @IBOutlet private weak var imageView: UIImageView! {
        
        didSet {
            
            imageView.tintColor = .white
        }
    }
    
    override var bundle: Bundle { return .main }
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
    }
    
    func configureFor(title: String, image: UIImage?) {
        titleLabel.text = title
        imageView.image = image
    }
}
