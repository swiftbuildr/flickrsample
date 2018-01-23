//
//  UIView+Loading.swift
//  FlickrSample
//
//  Created by Samuel Ward on 21/01/2018.
//  Copyright © 2018 Swiftbuildr Ltd. All rights reserved.
//

import UIKit

extension UIView {
    
    func showBlurLoader() {
        
        let blurEffect = UIBlurEffect(style: .regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activityIndicator.startAnimating()
        
        blurEffectView.contentView.addSubview(activityIndicator)
        activityIndicator.center = blurEffectView.contentView.center
        
        self.addSubview(blurEffectView)
    }
    
    func removeBlurLoader() {
        
        self.subviews.flatMap {  $0 as? UIVisualEffectView }.forEach {
            
            $0.removeFromSuperview()
        }
    }
}
