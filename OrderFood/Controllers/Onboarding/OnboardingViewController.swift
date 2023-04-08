//  OnboardingViewController.swift
//  OrderFood
//  Created by Kenan Baylan on 6.04.2023.

import UIKit

class OnboardingViewController: UIViewController {
    
    //MARK: UIElements
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    //MARK: Variables
    var slidesCount = OnboardingSlide.onboardingContentData.count

    var currentPageNumber = 0 {
        didSet {
            if currentPageNumber == slidesCount - 1 {
                nextButton.setTitle("Get Started", for: .normal)
            } else {
                nextButton.setTitle("Next", for: .normal)
            }
        }
    }
    
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //İstersek eğer storyboard üzerinde viewa tanımlayadabilirdik.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        pageControl.numberOfPages = slidesCount
    }
    
    
    //MARK: Functions
    
    
    
    //MARK: UIActions
    @IBAction func NextButtonTapped(_ sender: Any) {
        
        if currentPageNumber == slidesCount - 1 {
            let homeController = storyboard?.instantiateViewController(identifier: "toHomeNC") as! UINavigationController
            
            homeController.modalPresentationStyle = .fullScreen
            homeController.modalTransitionStyle = .coverVertical
            present(homeController, animated: true)
            
            
        } else {
            currentPageNumber += 1
            pageControl.currentPage += 1
            let indexPath = IndexPath(item: currentPageNumber, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
           
        }
    }
    
}



//MARK: UICollectionView properties.
extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return OnboardingSlide.onboardingContentData.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let reuseIdentifier = OnboardingCollectionViewCell.identifier
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! OnboardingCollectionViewCell
        
        cell.setupSlide(OnboardingSlide.onboardingContentData[indexPath.row])
        
        return cell
    }
    
    
    
    //collectionView'ın boyutunu belirledik.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        let currentPage = Int(scrollView.contentOffset.x) / Int(width)
        
        pageControl.currentPage = currentPageNumber
        currentPageNumber = currentPage // Next - Get started değişim için gerekli
        
        
    }
    
    
    
    
    
}
