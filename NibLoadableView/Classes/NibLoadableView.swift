//
//  IBLoadableView.swift
//  VentureMe
//
//  Created by Ephraim Russo on 2/24/16.
//  Copyright © 2017 VentureMe Inc. All rights reserved.
//

import UIKit

/**
 # Usage
 
 ## In your subclassed Nib
 
 1. Add a blank `UIView` instance as the root view
 2. Set the File Owner custom class to your `NibLoadableView` subclass.
 3. Add subviews to your nib. Any IBOutlets and IBActions should connect to File Owner.
 
 ## In your parent Nib or Storyboard:
 
 1. Add a blank `UIView` instance onto the Canvas.
 2. Apply constraints if needed.
 3. Set the custom class of the view to your `NibLoadableView` subclass.
 */
open class NibLoadableView: UIView {
    
    //**************************************************//
    
    // MARK: Static Variables
    
    //**************************************************//
    
    // MARK: Public Variables
    
    //**************************************************//
    
    // MARK: Private Variables
    
    //**************************************************//
    
    // MARK: Computed Variables
    
    open var bundle: Bundle { return Bundle(for: type(of: self)) }
    
    /// The name of the .xib resource used to load the visual interface of the view. This property will always be computed as the String version of this view's class name.
    var nibName: String { return String(describing: type(of: self)) }
    
    /// The view property that gets loaded directly by the Nib.
    private lazy var externalView: UIView? = {
        
        let bundle = self.bundle
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }()
    
    //**************************************************//
    
    // MARK: Init
    
    public override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    private func xibSetup() {
        
        guard let view = externalView else { return }
        
        // use bounds not frame or it'll be offset
        view.frame = self.bounds
        
        // Disable auto resizing masks.
        view.translatesAutoresizingMaskIntoConstraints = false
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        self.addSubview(view)
        
        let leading = NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0)
        let trailing = NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0)
        let top = NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0)
        let bottom = NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)

        // Activate the constriants.
        NSLayoutConstraint.activate([leading, trailing, top, bottom])
    }
    
    //**************************************************//
    
    // MARK: Configuration
    
    //**************************************************//
}

/**
 # Usage
 
 ## In your subclassed Nib
 
 1. Add a blank `UIView` instance as the root view
 2. Set the File Owner custom class to your `NibLoadableControl` subclass.
 3. Add subviews to your nib. Any IBOutlets and IBActions should connect to File Owner.
 
 ## In your parent Nib or Storyboard:
 
 1. Add a blank `UIView` instance onto the Canvas.
 2. Apply constraints if needed.
 3. Set the custom class of the view to your `NibLoadableControl` subclass.
 */
open class NibLoadbaleControl: UIControl {
    
    open var bundle: Bundle { return Bundle(for: type(of: self)) }
    
    /// The name of the .xib resource used to load the visual interface of the view. This property will always be computed as the String version of this view's class name.
    var nibName: String { return String(describing: type(of: self)) }
    
    /// The view property that gets loaded directly by the Nib.
    private lazy var externalView: UIView? = {
        
        let bundle = self.bundle
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }()
    
    public override init(frame: CGRect) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    private func xibSetup() {
        
        guard let view = externalView else { return }
        
        // use bounds not frame or it'll be offset
        view.frame = self.bounds
        
        // Disable auto resizing masks.
        view.translatesAutoresizingMaskIntoConstraints = false
        
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        self.addSubview(view)
        
        let leading = NSLayoutConstraint(item: view, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1, constant: 0)
        let trailing = NSLayoutConstraint(item: view, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1, constant: 0)
        let top = NSLayoutConstraint(item: view, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0)
        let bottom = NSLayoutConstraint(item: view, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1, constant: 0)
        
        // Activate the constriants.
        NSLayoutConstraint.activate([leading, trailing, top, bottom])
    }
    
}
