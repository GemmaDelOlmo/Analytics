//
//  AnalyticsManager.swift
//  AnalyticsExample
//
//  Created by ApeLucy on 4/3/18.
//  Copyright © 2018 ApeLucy. All rights reserved.
//

import Foundation
import UIKit

class AnalyticsManager: AnalyticsService {
    private var services: [AnalyticsService] = [FabricAnalyticsService(), AmplitudeAnalyticsService()]
    
    static let instance = AnalyticsManager()
    private init() {}
    
    func initialize(application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey: Any]?) {
        for service in services {
            service.initialize(
                application     : application,
                launchOptions   : launchOptions
            )
        }
    }
    func track(event: AnalyticsEvent) {
        for service in services {
            service.track(event: event)
        }
    }
}
