//
//  UIViewController + Extension.swift
//  OrderFood
//
//  Created by Kenan Baylan on 8.04.2023.
//

import UIKit

extension UIViewController {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let controller = storyboard.instantiateViewController(identifier: identifier) as! Self
        
        return controller
    }
    
    
}
