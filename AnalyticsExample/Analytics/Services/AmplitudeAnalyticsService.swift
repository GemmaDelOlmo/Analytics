//
//  AmplitudeAnalyticsService.swift
//  AnalyticsExample
//
//  Created by ApeLucy on 4/3/18.
//  Copyright © 2018 ApeLucy. All rights reserved.
//

import Foundation
import Amplitude_iOS

class AmplitudeAnalyticsService: AnalyticsService {
    func initialize(application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey : Any]?) {
        Amplitude.instance().initializeApiKey("asdfqwerty")
    }
    
    func track(event: AnalyticsEvent) {
        Amplitude.instance().logEvent(event.name, withEventProperties: event.metadata)
    }
}

