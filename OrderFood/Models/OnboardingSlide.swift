//
//  OnboardingSlide.swift
//  OrderFood
//
//  Created by Kenan Baylan on 6.04.2023.
//

import UIKit


struct OnboardingSlide {
    
    let title: String
    let description: String
    let image: UIImage
    
    
    static let onboardingContentData: [OnboardingSlide] = [
        OnboardingSlide(
            title: "Delicious Dishes",
            description:"Experience a variety of amazing dishes from different cultures around the world.",
            image: UIImage(named: "dogwalk")!),
        OnboardingSlide(
            title: "World-Class Chefs",
            description:"Our dishes are prepared by only the best.",
            image: UIImage(named: "flower")!),
        OnboardingSlide(
            title: "Instant World-Wide Delivery",
            description:"Your orders will be delivered instantly irrespective of your location around the world.",
            image: UIImage(named: "slide3")!)
    ]
        
}


