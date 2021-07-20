//
//  DateHelper.swift
//  MyBooks
//
//  Created by lijia xu on 7/16/21.
//

import Foundation




extension Date {
    
    // MARK: - Type Functions
    static func genterateDateFrom(year: Int, month: Int, day: Int) -> Date {
        var dateComponetns = DateComponents()
        dateComponetns.year = year
        dateComponetns.month = month
        dateComponetns.day = day

        let calander = Calendar(identifier: .gregorian)
        let newDate = calander.date(from: dateComponetns)
    
        return newDate ?? Date()
    }
    
    // MARK: - Instance Functions
    func getStringDescription() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy, MMM d"
        return formatter.string(from: self)
    }
    
}
