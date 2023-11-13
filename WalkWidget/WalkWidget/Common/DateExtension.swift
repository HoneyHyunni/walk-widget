//
//  DateExtension.swift
//  WalkWidget
//
//  Created by Sanghyun on 11/13/23.
//

import Foundation

extension Date {
    
    func getStartDate() -> Date {
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day], from: self)
        
        let startDateComponents = DateComponents(year: dateComponents.year, month: dateComponents.month, day: dateComponents.day, hour: 0, minute: 0, second: 0)
        
        if let startDate = Calendar.current.date(from: startDateComponents) {
            return startDate
        } else {
            return self
        }
    }
    
}
