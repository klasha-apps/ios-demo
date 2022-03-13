//
// PaymentOptionsViewController.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.


import UIKit
import BottomPopup
import klashapay

final class PaymentOptionsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var payWithApplePay: UIImageView!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var payWithKlasha: UIImageView!
    
    // MARK: -
//    override var popupHeight: CGFloat { 500 }
//    override var popupTopCornerRadius: CGFloat { 20 }
    var successfulPayment: (() -> Void)?
    var unSuccessfulPayment: (() -> Void)?
    
    // MARK: -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    // MARK: -
    
    fileprivate func configureViews() {
        payWithKlasha.addTapGesture { [weak self] in
            self?.payWithKlashaOption()
        }
    }
    
    
    fileprivate func payWithKlashaOption() {
        configureKlasha()
        guard let controller = UIStoryboard(name: AppConstants.KlashaSB, bundle: Bundle.getResourcesBundle()).instantiateViewController(withIdentifier: AppConstants.KlashaPayLandingViewController) as? KlashaPayLandingViewController else {
            fatalError(AppConstants.FAILED_TO_INSTANTIATE_KLASHA_CONTROLLER)
        }
        let nav = UINavigationController(rootViewController: controller)
        controller.amount = "12000"
        controller.delegate = self
        nav.navigationBar.backgroundColor = .clear
        UINavigationBar.appearance().barTintColor = UIColor(hex: AppConstants.KLASHA_NAV_COLOR)
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().isTranslucent = true
        self.present(nav, animated: true)
    }
    
    fileprivate func configureKlasha() {
        let config = KlashaConfig.sharedConfig()
        config.currencyCode = AppConstants.NAIRA
        config.email = AppConstants.CONFIG_EMAIL
        config.transcationRef = AppConstants.TRANSACTION_REF
        config.isStaging = true
        config.meta = [["metaname":"sdk", "metavalue":"ios"]]
        config.publicKey = AppConstants.KLASHA_PUBLIC_KEY
        config.encryptionKey = AppConstants.KLASHA_ENCRYPTION_KEY
    }
}

extension PaymentOptionsViewController: KlashaPayProtocol {
    func tranasctionSuccessful(txnRef: String?, responseData: ValidateCardPaymentResponse?) {
        successfulPayment?()
    }
    
    func tranasctionFailed(flwRef: String?, responseData: ValidateCardPaymentResponse?) {
        unSuccessfulPayment?()
    }
    
    func fundWithKlashaWalletTransactionSuccessful(txRef: String?, responseData: KlashaWalletMakePaymentResponse?) {
        successfulPayment?()
    }
    
    func fundWithKlashaWalletTransactionFailed(txRef: String?, responseData: KlashaWalletMakePaymentResponse?) {
        unSuccessfulPayment?()
    }
    
    func onDismiss() {}
    
}
