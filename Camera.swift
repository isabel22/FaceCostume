//
//  Camera.swift
//  Demo
//
//  Created by Isabel Garcia on 1/15/17.
//  Copyright © 2017 ModiFace Inc. All rights reserved.
//

import UIKit

extension UIApplication {
        
        var screenShot: UIImage?  {
            
            let layer = keyWindow!.layer
            let scale = UIScreen.main.scale
            
            UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale);
            layer.render(in: UIGraphicsGetCurrentContext()!)
            let screenshot = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return screenshot
        }
    
}


