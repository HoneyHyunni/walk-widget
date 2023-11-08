//
//  UserDefaultsWrapper.swift
//  WalkWidget
//
//  Created by Sanghyun on 11/8/23.
//

import Foundation

class UserDefaultsWrapper {
    
    static let shared = UserDefaultsWrapper()
    
    private var sharedUserDefaults: UserDefaults?
    
    private init() { }
    
    // TODO: refactor
    func getSharedUserDefaults() -> UserDefaults {
        if let userDefaults = self.sharedUserDefaults {
            return userDefaults
        } else {
            if let userDefaults = UserDefaults(suiteName: AppConstants.USER_DEFAULTS_ID) {
                print("Group UserDefaults Initialized")
                self.sharedUserDefaults = userDefaults
                return userDefaults
            } else {
                print("Standard UserDefaults Initialized")
                self.sharedUserDefaults = UserDefaults.standard
                return UserDefaults.standard
            }
        }
    }
    
}
