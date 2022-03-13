//
// UIView+Extension.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	

import UIKit

extension UIView {
    func addDismissGesture(on viewcontroller: UIViewController, dismissHandler: NoParamHandler? = nil) {
        animateViewOnTapGesture {
            viewcontroller.dismissViewController {
                dismissHandler?()
            }
        }
    }
    
    func animateViewOnTapGesture(duration: TimeInterval = 0.5, completion: (() -> Void)? = nil) {
        addTapGesture {
            self.animateView(duration: duration, completion: completion)
        }
    }
    
    func animateView(duration: TimeInterval = 0.5, completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0.5
        }) { completed in
            UIView.animate(withDuration: duration, animations: {
                self.alpha = 1
                completion?()
            })
        }
    }
    
    func addTapGesture(action: @escaping () -> Void ){
        let tap = UIViewTapGestureRecognizer(target: self , action: #selector(self.handleTap(_:)))
        tap.action = action
        tap.numberOfTapsRequired = 1
        
        self.addGestureRecognizer(tap)
        self.isUserInteractionEnabled = true
        
    }
    
    @objc func handleTap(_ sender: UIViewTapGestureRecognizer) {
        sender.action!()
    }
    
}


