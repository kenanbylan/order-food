//
//  SpecialCollectionViewCell.swift
//  OrderFood
//
//  Created by Kenan Baylan on 8.04.2023.
//

import UIKit

class SpecialCollectionViewCell: UICollectionViewCell {

    //static let identifier = String(describing: SpecialCollectionViewCell.self)
    static let identifier = "SpecialCollectionViewCell"

    
    //MARK: UIElements
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    
    
    func setupSpecialDish(dish: Dish) {
        imageView.kf.setImage(with: dish.image?.asUrl)
        titleLabel.text = dish.name
        descriptionLabel.text = dish.description
        caloriesLabel.text = dish.formattedCalories
        
    }

}
