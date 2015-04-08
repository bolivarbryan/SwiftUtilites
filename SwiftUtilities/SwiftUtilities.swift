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
        let urlTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@", urlRegex)!
        return urlTest.evaluateWithObject(stringUrl)
    }

    func validateEmail(emailString:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let range = emailString.rangeOfString(emailRegEx, options:.RegularExpressionSearch)
        let result = range != nil ? true : false
        return result
    }
}