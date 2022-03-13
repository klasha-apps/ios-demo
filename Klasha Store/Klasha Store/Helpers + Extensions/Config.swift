//
// Config.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 13/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	

import Foundation

enum Config {
    static func stringValue(forKey key: String) -> String {
        guard let value = Bundle.main.object(forInfoDictionaryKey: key) as? String else {
            fatalError("Invalid value or undefined key")
        }
        return value
    }
}
