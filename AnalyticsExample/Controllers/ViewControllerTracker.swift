//
//  ViewControllerTracker.swift
//  AnalyticsExample
//
//  Created by ApeLucy on 4/3/18.
//  Copyright © 2018 ApeLucy. All rights reserved.
//

import Foundation

class ViewControllerTracker {
    let analytics: AnalyticsService
    
    init(analyticsService: AnalyticsService = AnalyticsManager.instance) {
        analytics = analyticsService
    }
    func userDidLogin() {
        analytics.track(event: .login)
    }
    
    func userDidLevelUp(level: Int) {
        analytics.track(event: .levelUp(level: level))
    }
}
