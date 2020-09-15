//
//  Validation.swift
//  Flexyn
//
//  Created by day on 07/11/17.
//  Copyright © 2017 day. All rights reserved.
//

import UIKit

/*
^                         Start anchor
(?=.*[A-Z].*[A-Z])        Ensure string has two uppercase letters.
(?=.*[!@#$&*])            Ensure string has one special case letter.
(?=.*[0-9].*[0-9])        Ensure string has two digits.
(?=.*[a-z].*[a-z].*[a-z]) Ensure string has three lowercase letters.
.{8}                      Ensure string is of length 8.
$                         End anchor.
*/

class Validation: NSObject {
    
   class func isValidEmail(emailAddressString:String) -> Bool {
        //let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailAddressString)
        
    }
//    // Mobile number validation that doesn't start with zero
//    
//    class func isMobieNumberValidatoin(mobileNumber : String) -> Bool
//    {
//        do {
//            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
//            let matches = detector.matches(in: mobileNumber, options: [], range: NSMakeRange(0, 1))
//            if let res = matches.first {
//                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == 1
//            } else {
//                return false
//            }
//        } catch {
//            return false
//        }
//    }
    // Minimum 6 and Maximum 15 character at least 1 Uppercase Alphabet, 1 Lowercase Alphbet, 1 Number and 1 Special Character
    
    class func isPasswordValidation(passwordValidation: String) -> Bool
    {
        // /d not accepted
                    //^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{6,15}
        let pwdRegEx =  "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$&*]).{6,15}$"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", pwdRegEx)
        return emailTest.evaluate(with: passwordValidation)
        
    }
    
//    extension String {
//        var isPhoneNumberValidation: Bool {
//            do {
//                let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
//                let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.characters.count))
//                if let res = matches.first {
//                    return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.characters.count
//                } else {
//                    return false
//                }
//            } catch {
//                return false
//            }
//        }
//    }
    
    
//    1 - Password length is 8.
//    2 - 2 UpperCase letters in Password.
//    3 - One Special Character in Password.
//    4 - Two Number in Password.
//    5- Three letters of lowercase in password.
//
//
//
//    "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$&*]).{6,15}$"
//    class func isPasswordValid(_ password : String) -> Bool{
//        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9])(?=.*[a-z]).{6,15}$")
//        return passwordTest.evaluate(with: password)
//    }
//
//    1 - Password length is 8.
//    2 - One Alphabet in Password.
//    3 - One Special Character in Password.
//
//    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
}
