//
//  AnalyticsExampleTests.swift
//  AnalyticsExampleTests
//
//  Created by ApeLucy on 4/3/18.
//  Copyright © 2018 ApeLucy. All rights reserved.
//

import XCTest
@testable import AnalyticsExample

class MockAnalyticsService: AnalyticsService {
    
    var hasInitialized: Bool = false
    var hasTrackedLogin: Bool = false
    
    func initialize(application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
    }
    
    func track(event: AnalyticsEvent) {
        switch event {
        case .login:
            hasTrackedLogin = true
        default:
            break
        }
    }
}

class AnalyticsExampleTests: XCTestCase {
    
    var sut: ViewControllerTracker!
    var mockAnalytics: MockAnalyticsService!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        mockAnalytics = MockAnalyticsService()
        sut = ViewControllerTracker(analyticsService: mockAnalytics)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        mockAnalytics = nil
        super.tearDown()
    }
 
    func testThatLoginEventWasSent() {
        sut.userDidLogin()
        XCTAssertTrue(mockAnalytics.hasTrackedLogin)
    }
}

