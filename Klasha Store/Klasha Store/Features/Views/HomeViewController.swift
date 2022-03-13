//
// HomeViewController.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 11/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.


import UIKit

final class HomeViewController: UIViewController, Storyboardable {
    
    // MARK: - IBOutlets
    @IBOutlet weak var cartIcon: UIImageView!
    @IBOutlet weak var cartLabel: UILabel!
    @IBOutlet weak var cartCount: UIImageView!
    @IBOutlet weak var addToCart: UIView!
    @IBOutlet weak var addToCartLabel: UILabel!
    
    // MARK: - Properties
    var cartCountIsHidden = true
    var showItemDetail: (() -> Void)?
    
    // MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    // MARK: -
    
    fileprivate func configureViews() {
        addToCart.addTapGesture { [weak self] in
            self?.addItemToCart()
        }
        
        cartIcon.addTapGesture { [weak self] in
            if self?.cartCountIsHidden == false {
                self?.showItemDetail?()
            }
        }
        
        cartLabel.addTapGesture { [weak self] in
            if self?.cartCountIsHidden == false {
                self?.showItemDetail?()
            }
        }
        
        cartCount.addTapGesture { [weak self] in
            if self?.cartCountIsHidden == false {
                self?.showItemDetail?()
            }
        }
        
    }
    
    fileprivate func addItemToCart() {
        if cartCount.isHidden {
            cartCount.isHidden = false
            cartCountIsHidden = false
            addToCartLabel.text = "Remove item"
        } else {
            cartCount.isHidden = true
            cartCountIsHidden = true
            addToCart.alpha = 1
            addToCartLabel.text = "Add to cart"
        }
    }
    
}

