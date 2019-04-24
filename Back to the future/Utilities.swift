//
//  Utilities.swift
//  Back to the future
//
//  Created by Abhishek Thakur on 25/04/19.
//  Copyright © 2019 Abhishek Thakur. All rights reserved.
//

import Foundation
class Utilities {
    //Getting date and Calender component of our interest i.e year
    func GetCurrentYear() -> String {
        let date = Date()
        let calender = Calendar.current
        return String(calender.component(.year, from: date))
    }
    
    
    //Getting index value from year it not as simple as other language
    func GetLeterAtIndex (str: String, location: Int) -> String {
        let index = str.index(str.startIndex, offsetBy: location)
        return String(str[index])
    }
    func GetCurrentTime() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .medium
        let timeString = formatter.string(from: date)
        return timeString
    }
    func GetRandomYear() -> String {
        return String(arc4random_uniform(8999) + 1000)
    }
}
