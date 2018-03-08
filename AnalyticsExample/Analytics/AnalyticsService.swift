//
//  AnalyticsService.swift
//  AnalyticsExample
//
//  Created by ApeLucy on 4/3/18.
//  Copyright © 2018 ApeLucy. All rights reserved.
//

import Foundation
import UIKit

protocol AnalyticsService {
    
    func initialize(application: UIApplication, launchOptions: [UIApplicationLaunchOptionsKey: Any]?)
    
    func track(event: AnalyticsEvent)
}
