//
//  SwiftUtilities.swift
//  SwiftUtilities
//
//  Created by Bryan A Bolivar M on 8/04/15.
//  Copyright (c) 2015 BolivarBryan. All rights reserved.
//

import Foundation

class SwiftUtilities: NSObject {
    func validateUrl(stringUrl: NSString)-> Bool {
        let urlRegex: NSString = "http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w- ./?%&amp;=]*)?"
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@", urlRegex)
        return urlTest.evaluateWithObject(stringUrl)
    }

    func validateEmail(emailString:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let range = emailString.rangeOfString(emailRegEx, options:.RegularExpressionSearch)
        let result = range != nil ? true : false
        return result
    }
    
    
    func validatePhone(phoneString:String) -> Bool {
        let phoneRegEx = "^(\\(\\+?[0-9]{1,4}\\)|\\+?[0-9]{1,4})\\s[0-9]{1,}$"
        let range = phoneString.rangeOfString(phoneRegEx, options:.RegularExpressionSearch)
        let result = range != nil ? true : false
        return result
    }
    
    func compareWithCurrentTime(){
        
        var dateString = "2015-01-13 12:10:35"
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var dateFromString: NSDate = dateFormatter.dateFromString(dateString)!
        let date2 : NSDate = dateFromString
        let date1 : NSDate = NSDate()

        let compareResult = date1.compare(date2)
        if compareResult == NSComparisonResult.OrderedDescending {
            println("\(date1) is later than \(date2)")
        }
        
        let interval = date1.timeIntervalSinceDate(date2)
        let hours = interval / 3600
        let minutes = (interval - (hours*3600)) / 60
        println("hours: \(hours)")
        println("hours: \(minutes)")

    }
    
    
}