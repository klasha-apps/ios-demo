//
// ItemDetailsViewController.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.


import UIKit

final class ItemDetailsViewController: UIViewController, Storyboardable {
    
    // MARK: - IBOutlets
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var pickupStationImage: UIImageView!
    @IBOutlet weak var doorDeliveryImage: UIImageView!
    @IBOutlet weak var doorDeliveryLabel: UILabel!
    @IBOutlet weak var pickupStationLabel: UILabel!
    @IBOutlet weak var continueToPayment: UIImageView!
    
    // MARK: -
    var dismissSelf: (() -> Void)?
    
    // MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    // MARK: -
    fileprivate func configureViews() {
        backImage.addTapGesture { [weak self] in
            self?.dismissSelf?()
        }
        
        doorDeliveryLabel.addTapGesture { [weak self] in
            self?.selectDoorDelivery()
        }
        
        doorDeliveryImage.addTapGesture { [weak self] in
            self?.selectDoorDelivery()
        }
        
        pickupStationLabel.addTapGesture { [weak self] in
            self?.selectPickupStation()
        }
        
        pickupStationImage.addTapGesture { [weak self] in
            self?.selectPickupStation()
        }
        
        continueToPayment.addTapGesture { [weak self] in
            self?.navigateToPayment()
        }
    }
    
    fileprivate func selectDoorDelivery() {
        pickupStationImage.image = R.image.radiobuttonunselected()!
        doorDeliveryImage.image = R.image.radiobuttonselected()!
    }
    
    fileprivate func selectPickupStation() {
        doorDeliveryImage.image = R.image.radiobuttonunselected()!
        pickupStationImage.image = R.image.radiobuttonselected()!
    }
    
    fileprivate func navigateToPayment() {
        let paymentOptionsVC = R.storyboard.main.paymentOptionsViewController()!
        
        paymentOptionsVC.successfulPayment = { [weak self] in
            self?.dismiss(animated: true, completion: {
                self?.showSuccessOrErrorSuccess(message: AppConstants.PAYMENT_SUCCESSFUL, doneTapHandler: {
                    self?.dismiss(animated: true)
                })
            })
        }
        
        paymentOptionsVC.unSuccessfulPayment = { [weak self] in
            self?.dismiss(animated: true, completion: {
                self?.showSuccessOrErrorSuccess(message: AppConstants.PAYMENT_UNSUCCESSFUL, icon: R.image.failed()!, doneText: AppConstants.DONE, doneTapHandler: nil)
            })
        }
        
        present(paymentOptionsVC, animated: true)
    }
    
}
