//
//  CardView.swift
//  OrderFood
//
//  Created by Kenan Baylan on 8.04.2023.
//

import UIKit



class CardView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    
    private func initialSetup() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10
        cornerRadius = 10
        
    }
    
    
    
}
