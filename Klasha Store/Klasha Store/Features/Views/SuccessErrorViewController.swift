//
// SuccessErrorViewController.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	

import UIKit
import BottomPopup

final class SuccessErrorViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    
    // MARK: - Properties
    
    var statusImage: UIImage? = R.image.successful()
    var statusText = AppConstants.PAYMENT_SUCCESSFUL
    var doneHandler: NoParamHandler?
    
    // MARK: -
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    // MARK: -
    
    fileprivate func configureViews() {
        icon.image = statusImage
        statusLabel.text = statusText
        
    }
    
    // MARK: -
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        dismiss(animated: true) { [weak self] in
            self?.doneHandler?()
        }
    }
    
}
