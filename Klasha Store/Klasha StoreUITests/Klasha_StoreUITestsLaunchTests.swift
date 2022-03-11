//
// Klasha_StoreUITestsLaunchTests.swift
// Klasha Store

//  Created by Emmanuel Omokagbo on 11/03/2022
//  Copyright © 2022 Emmanuel Omokagbo. All rights reserved.
	

import XCTest

class Klasha_StoreUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
