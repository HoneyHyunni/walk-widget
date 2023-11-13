//
//  StepsEntry.swift
//  HealthWidgetExtension
//
//  Created by Sanghyun on 11/9/23.
//

import WidgetKit

struct StepsEntry: TimelineEntry {
    let date: Date
    
    var steps: Int {
        return UserDefaultsWrapper.shared.getSharedUserDefaults().integer(forKey: AppConstants.UD_KEY_STEPS)
    }
}
