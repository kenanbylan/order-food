//
//  PopularCollectionViewCell.swift
//  OrderFood
//
//  Created by Kenan Baylan on 8.04.2023.
//

import UIKit
import Kingfisher


class PopularCollectionViewCell: UICollectionViewCell {
    
    //static let identifier = String(describing: PopularCollectionViewCell.self)
    static let identifier = "PopularCollectionViewCell"
    
    //MARK: UIElements
    @IBOutlet weak var popularFoodLabel: UILabel!
    @IBOutlet weak var popularFoodImageView: UIImageView!
    @IBOutlet weak var popularFoodCalories: UILabel!
    @IBOutlet weak var popularFoodDescLabel: UILabel!
    
    
    
    
    //MARK: BindSetup or Constructor
    func setupPopularDish(dish: Dish) {
        popularFoodLabel.text = dish.name
        popularFoodImageView.kf.setImage(with:dish.image?.asUrl)
        popularFoodCalories.text  = dish.formattedCalories
        popularFoodDescLabel.text = dish.description
        
    }
    
    
    
    
}
