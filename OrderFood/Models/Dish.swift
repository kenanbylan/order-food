//
//  DishPopular.swift
//  OrderFood
//
//  Created by Kenan Baylan on 8.04.2023.
//

import UIKit
import Foundation


struct Dish {
    
    let id: String?
    let name: String?
    let image: String?
    let description: String?
    
    let calories: Double?
    
    // "3.40" like formated
    var formattedCalories: String {
        return String(format: "%.2f calories", calories ?? 0 )
    }
    
}


