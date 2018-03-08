//
//  FabricAnalyticsService.swift
//  AnalyticsExample
//
//  Created by ApeLucy on 4/3/18.
//  Copyright © 2018 ApeLucy. All rights reserved.
//

import Foundation
import UIKit
import Fabric
import Crashlytics

class FabricAnalyticsService: AnalyticsService {
    func initialize(application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey : Any]?) {
        Fabric.with([Crashlytics.self])
    }
    
    func track(event: AnalyticsEvent) {
        Answers.logCustomEvent(withName: event.name, customAttributes: event.metadata)
    }
}
