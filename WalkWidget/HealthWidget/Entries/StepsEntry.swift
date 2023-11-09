//
//  StepsEntry.swift
//  HealthWidgetExtension
//
//  Created by Sanghyun on 11/9/23.
//

import WidgetKit

struct StepsEntry: TimelineEntry {
    let date: Date
    
    var backgroundColor: String {
        return UserDefaultsWrapper.shared.getSharedUserDefaults().string(forKey: AppConstants.UD_KEY_BACKGROUND_COLOR) ?? "no value"
    }
}
