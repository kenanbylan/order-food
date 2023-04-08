//
//  HomeViewController.swift
//  OrderFood
//
//  Created by Kenan Baylan on 7.04.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var specialsCollectionView: UICollectionView!
    
    
    
    
    var categories: [DishCategory] = [
        DishCategory(id: "id1", name: "Africa Dish", image:"https://picsum.photos/100/200"),
        DishCategory(id: "id1", name: "Hamburger", image:"https://picsum.photos/100/210"),
        DishCategory(id: "id1", name: "Pizza", image:"https://picsum.photos/100/202"),
        DishCategory(id: "id1", name: "Pasta", image:"https://picsum.photos/100/203"),
        DishCategory(id: "id1", name: "Lahmacun", image:"https://picsum.photos/14/214"),
        DishCategory(id: "id1", name: "Pidem", image:"https://picsum.photos/100/203"),
        DishCategory(id: "id1", name: "Adana Durum.", image:"https://picsum.photos/100/201"),
    ]
    
    var popularDishes: [Dish] = [
        Dish(id: "id1", name: "Körü Soslu Makarna", image: "https://picsum.photos/19/21", description: "this is the best I have ever tasted.", calories: 34.594),
        Dish(id: "id2", name: "Gustavo", image: "https://picsum.photos/100/213", description: "this is the best I have ever tasted.", calories: 23.594),
        Dish(id: "id3", name: "Indome", image: "https://picsum.photos/99/201", description: "this is the best I have ever tasted.", calories: 31.594),
        Dish(id: "id4", name: "Garri", image: "https://picsum.photos/100/223", description: "this is the best I have ever tasted.", calories: 32.594),
        Dish(id: "id3", name: "Indome", image: "https://picsum.photos/99/201", description: "this is the best I have ever tasted.", calories: 31.594),
        Dish(id: "id4", name: "Garri", image: "https://picsum.photos/100/223", description: "this is the best I have ever tasted.", calories: 32.594),
        Dish(id: "id3", name: "Indome", image: "https://picsum.photos/99/201", description: "this is the best I have ever tasted.", calories: 31.594),
        Dish(id: "id4", name: "Garri", image: "https://picsum.photos/100/223", description: "this is the best I have ever tasted.", calories: 32.594),
    ]
    
    var specials: [Dish] = [
        
        Dish(id: "id1", name: "Körü Soslu Makarna", image: "https://picsum.photos/19/21", description: "this is the best I have ever tasted.", calories: 34.594),
        Dish(id: "id2", name: "Gustavo", image: "https://picsum.photos/100/213", description: "this is the best I have ever tasted.", calories: 23.594),
        Dish(id: "id3", name: "Indome", image: "https://picsum.photos/99/201", description: "this is the best I have ever tasted.", calories: 31.594),
        Dish(id: "id4", name: "Garri", image: "https://picsum.photos/100/223", description: "this is the best I have ever tasted.", calories: 32.594),
        Dish(id: "id3", name: "Indome", image: "https://picsum.photos/99/201", description: "this is the best I have ever tasted.", calories: 31.594),
        Dish(id: "id4", name: "Garri", image: "https://picsum.photos/100/223", description: "this is the best I have ever tasted.", calories: 32.594),
        Dish(id: "id3", name: "Indome", image: "https://picsum.photos/99/201", description: "this is the best I have ever tasted.", calories: 31.594),
        Dish(id: "id4", name: "Garri", image: "https://picsum.photos/100/223", description: "this is the best I have ever tasted.", calories: 32.594),
        
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // categoryCollectionView.delegate = self
        // categoryCollectionView.dataSource = self
        
        registerCellNibs()
        
    }
    
    //araştır.
    private func registerCellNibs() {
        let categoryNibName = CategoryCollectionViewCell.identifier
        let popularDishNibName = PopularCollectionViewCell.identifier
        let specialDishNibname = SpecialCollectionViewCell.identifier
        
        
        categoryCollectionView.register(UINib(nibName: categoryNibName, bundle: nil), forCellWithReuseIdentifier: categoryNibName)
        
        popularCollectionView.register(UINib(nibName: popularDishNibName, bundle: nil), forCellWithReuseIdentifier: popularDishNibName)
        
        specialsCollectionView.register(UINib(nibName: specialDishNibname, bundle: nil), forCellWithReuseIdentifier: specialDishNibname)
        
    }
    
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularCollectionView:
            return popularDishes.count
            
        case specialsCollectionView:
            return specials.count
            
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
            
            //categoryCollectionView
        case categoryCollectionView:
            let categoryCellIdentifier = CategoryCollectionViewCell.identifier
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: categoryCellIdentifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setupDish(category: categories[indexPath.row])
            return cell
            
            //popularCollectionView
        case popularCollectionView:
            let popularIdentifier = PopularCollectionViewCell.identifier
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: popularIdentifier , for: indexPath) as! PopularCollectionViewCell
            
            cell.setupPopularDish(dish: popularDishes[indexPath.row])
            return cell
            
            
            //popularCollectionView
        case specialsCollectionView:
            let specialsIdentifier = SpecialCollectionViewCell.identifier
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: specialsIdentifier , for: indexPath) as! SpecialCollectionViewCell
            
            cell.setupSpecialDish(dish: specials[indexPath.row])
            return cell
            
        default:
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == categoryCollectionView {
            
        } else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularCollectionView ? popularDishes[indexPath.row] : specials[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
            
        }
        
    }
}





