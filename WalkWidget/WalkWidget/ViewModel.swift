//
//  ViewModel.swift
//  WalkWidget
//
//  Created by Sanghyun on 11/13/23.
//

import CoreMotion
import Foundation

class ViewModel {
    
    private let pedometer = CMPedometer()
    private var _steps: Int?
    
    var steps: Int? {
        get {
            return self._steps
        }
    }
    
    init() {
        print("ViewModel Initialized.")
        self.getSteps()
    }
    
    func getSteps() {
        if CMPedometer.isStepCountingAvailable() {
            self.querySteps()
        }
    }
    
    private func querySteps() {
        let currentDate = Date()
        let baseDate = currentDate.getStartDate()
        
        self.pedometer.queryPedometerData(from: baseDate, to: currentDate) { (data, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let data = data else { return }
            let steps = data.numberOfSteps.intValue
            
            self._steps = steps
            UserDefaultsWrapper.shared.getSharedUserDefaults().set(steps, forKey: AppConstants.UD_KEY_STEPS)
        }
    }
    
}
