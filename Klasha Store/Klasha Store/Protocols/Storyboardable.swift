//
// Storyboardable.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	

import UIKit

protocol Storyboardable {
    
    // MARK: - Properties
    
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle { get }
    
    // MARK: -
    
    static var storyboardIdentifier: String { get }
    
    // MARK: - Methods
    
    static func instantiate() -> Self
    
}

extension Storyboardable where Self: UIViewController {
    
    // MARK: - Properties
    
    static var storyboardName: String {
        return "Main"
    }
    
    static var storyboardBundle: Bundle {
        return .main
    }
    
    // MARK: -
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    // MARK: - Methods
    
    static func instantiate() -> Self {
        guard let viewController = UIStoryboard(name: storyboardName, bundle: storyboardBundle).instantiateViewController(withIdentifier: storyboardIdentifier) as? Self else {
            fatalError("Unable to Instantiate View Controller With Storyboard Identifier \(storyboardIdentifier)")
        }
        
        return viewController
    }
    
}
