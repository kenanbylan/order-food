//
//  CategoryCollectionViewCell.swift
//  OrderFood
//
//  Created by Kenan Baylan on 7.04.2023.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func setupDish(category: DishCategory) {
        categoryLabel.text = category.name
        imageView.kf.setImage(with: category.image.asUrl)
    }
    
    
}
