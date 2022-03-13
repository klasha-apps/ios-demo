//
// Code+Extension.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	

import UIKit

typealias NoParamHandler = () -> Void
typealias StringParamHandler = (String) -> Void
typealias BoolParamHandler = (Bool) -> Void

//MARK: - Custom UIViewTapGestureRecognizer
class UIViewTapGestureRecognizer: UITapGestureRecognizer {
    var action : (()->Void)? = nil
}
