//
// UIViewController+Extension.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	

import UIKit

extension UIViewController {
    func showSuccessOrErrorSuccess(message: String, icon: UIImage? = R.image.successful(), doneText: String = AppConstants.DONE, doneTapHandler: NoParamHandler? = nil) {
        let vc = R.storyboard.main.successErrorViewController()!
        vc.statusText = message
        vc.statusImage = icon
        vc.doneHandler = doneTapHandler
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func dismissViewController(animated: Bool = true, completion: (() -> Void)? = nil) {
        dismiss(animated: true, completion: completion)
    }
    
    func presentViewController(_ viewController: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        present(viewController, animated: animated, completion: completion)
    }
    
}
