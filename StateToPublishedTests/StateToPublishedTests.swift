//
//  StateToPublishedTests.swift
//  StateToPublishedTests
//
//  Created by Luke Smith on 26/02/2021.
//

import XCTest
@testable import StateToPublished

class StateToPublishedTests: XCTestCase {

    /**
     This test fails because we are trying to test a bool within a SwiftUI Struct, and it can be recreated at any time.
     */
    func testStateBool() {
        let viewWithStates = ViewWithStates()
        viewWithStates.showSheet = true
        XCTAssertTrue(viewWithStates.showSheet)
    }
    
    /**
     This test for a similar boolean also controlling a SwiftUI state succeeds because it is contained in a Class
     */
    func testViewModelBool() {
        let viewModel = ViewWithModelVM()
        viewModel.showActionSheet = true
        XCTAssertTrue(viewModel.showActionSheet)
    }
}
