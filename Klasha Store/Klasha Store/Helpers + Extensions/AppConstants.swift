//
// AppConstants.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	

import Foundation

struct AppConstants {
    static let PAYMENT_SUCCESSFUL = "Payment Successful"
    static let PAYMENT_UNSUCCESSFUL = "Payment Unsuccessful"
    static let NAIRA = "NGN"
    static let DONE = "DONE"
    static let KLASHA_NAV_COLOR = "#E75241"
    static let KlashaPayLandingViewController = "KlashaPayLandingViewController"
    static let KlashaSB = "KlashaSB"
    static let FAILED_TO_INSTANTIATE_KLASHA_CONTROLLER = "Unable to Instantiate KlashaPayLandingViewController"
    static let CONFIG_EMAIL = "yowivig426@goonby.com"
    static let TRANSACTION_REF = "emar-test-ref-24 \(Int.random(in: 1...200))"
    static let KLASHA_PUBLIC_KEY = Config.stringValue(forKey: "KLASHA_PUBLIC_KEY")
    static let KLASHA_ENCRYPTION_KEY = Config.stringValue(forKey: "KLASHA_ENCRYPTION_KEY")
}

