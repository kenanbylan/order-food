//
//  DishDetailViewController.swift
//  OrderFood
//
//  Created by Kenan Baylan on 8.04.2023.
//

import UIKit

class DishDetailViewController: UIViewController {
    
    //MARK: UIElements
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var dishTitle: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var placeOrderButton: UIButton!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        dishTitle.text = dish.name
        
        
    }
    
    //MARK: Actions
    @IBAction func placeOrderTapped(_ sender: UIButton) {
        
        
    }
    
}
