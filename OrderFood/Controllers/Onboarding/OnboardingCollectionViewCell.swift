//
//  OnboardingCollectionViewCell.swift
//  OrderFood
//
//  Created by Kenan Baylan on 6.04.2023.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func setupSlide(_ slide: OnboardingSlide){
        
        self.imageView.image = slide.image
        self.titleLabel.text = slide.title
        self.descriptionLabel.text = slide.description
    
    }
    
    
}
