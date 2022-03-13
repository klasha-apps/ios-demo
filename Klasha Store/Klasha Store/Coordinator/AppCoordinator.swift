//
// AppCoordinator.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	
import UIKit

class AppCoordinator {
    
    // MARK: - enum
    
    fileprivate enum PresentationStyle {
        case push
        case present
    }
    
    // MARK: - Properties
    
    private let navigationController = UINavigationController()
    
    // MARK: - Public API
    
    var rootViewController: UIViewController {
        return navigationController
    }
    
    // MARK: -
    
    func start() {
        let vc = HomeViewController.instantiate()
        vc.showItemDetail = { [weak self] in
            self?.showItemDetail()
        }
        navigationController.pushViewController(vc, animated: true)
    }
    
    fileprivate func showItemDetail() {
        let vc = ItemDetailsViewController.instantiate()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        
        vc.dismissSelf = { [weak self] in
            self?.dismissSelf()
        }
        
        navigationController.present(vc, animated: true)
    }
    
    fileprivate func dismissSelf() {
        navigationController.dismiss(animated: true)
    }
    
}
