//
//  AnalyticsEvent.swift
//  AnalyticsExample
//
//  Created by ApeLucy on 4/3/18.
//  Copyright © 2018 ApeLucy. All rights reserved.
//

import Foundation

enum AnalyticsEvent {
    case login
    case levelUp(level: Int)
    case signUp
    case updateProfile
}

extension AnalyticsEvent {
    var name: String {
        switch self {
        case .login:
            return "Login"
        case .levelUp(_):
            return "Level Up"
        case .signUp:
            return "Signup"
        case .updateProfile:
            return "Update Profile"
        }
    }
    
    var metadata: [String: String] {
        switch self {
        case .levelUp(let level):
            return ["level": String(level)]
        default:
            return [:]
        }
    }
}
