//
//  LoginDataManager.swift
//  Flexyn
//
//  Created by day on 06/11/17.
//  Copyright © 2017 day. All rights reserved.
//

import UIKit
import Alamofire

class LoginDataManager: NSObject {
    
    func loginDataManager(firstName : String, lastName: String, timeStamp : String, callBack :
        @escaping ((_ isSuccess : Bool, _ Message : String?) -> ())) {
        let parameters: Parameters = [
            "firstName":firstName,
            "lastName":lastName,
            "timeStamp":timeStamp,
        ]
        let headers: HTTPHeaders = [
            "Content-Type": "application/json",
            "x-api-key": "hHsGH1LHbT20MZvZAM6d4XaXLJ7VBA5SUvuTLQ50",
            "Authorization": "eyJraWQiOiI0elhjMHlkQWlORWkrQkhoRndXTTU4cE1oZThKcGRtSDdUTFNKM1ZUbDQ0PSIsImFsZyI6IlJTMjU2In0.eyJzdWIiOiI4ZTdlMGQ0Ni05ZGEwLTQ2MjItODRiMi1kMTA0ZmI5YTc5OWEiLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiaXNzIjoiaHR0cHM6XC9cL2NvZ25pdG8taWRwLnVzLXdlc3QtMi5hbWF6b25hd3MuY29tXC91cy13ZXN0LTJfZ2IwTU9tc0hOIiwiY29nbml0bzp1c2VybmFtZSI6IjhlN2UwZDQ2LTlkYTAtNDYyMi04NGIyLWQxMDRmYjlhNzk5YSIsImdpdmVuX25hbWUiOiJyYW1hbSIsImF1ZCI6IjdtNGJxcG41Y29uN2c0anQzbzFlZ2k2ZHBpIiwiZXZlbnRfaWQiOiJmZmExMzk3Mi02NDEyLTRhYWItOGIxYS02NzhjMDRhMTM2ODQiLCJ0b2tlbl91c2UiOiJpZCIsImF1dGhfdGltZSI6MTU5ODUxMTEzOCwiZXhwIjoxNTk4NTE0NzM4LCJpYXQiOjE1OTg1MTExMzgsImZhbWlseV9uYW1lIjoia3VtYXIiLCJlbWFpbCI6InJhbWFuMTUwQG1haWxpbmF0b3IuY29tIn0.X2_dujzzpM2KBvMcGlKuFKU4JBIGrXGwsuT8KrgbZ0j_HWvaLwlJjW34R9RYASvfEHbMaBj1eJ5rdkPZTyUeOKFQwU1MBBO89G3Ox7r2roZnTonr3a9MaJ-yp-8e5KZT3wGJszNV_8WsCMheD0K_WdCmV3-Uk8s_pnpg-fNyfEpxUplEGbknCnIufk_QNlW64U1rFBNxY4yzru6vwDRQCsg_ZF4woxwKF8QgRNO8zdIFeezs8gqm0OzVnxlQVAt1_VvMtqvVmGkhcSG6gNhhEeaUnGU-ASOcJZDzZhW34S8lDlCx4mY5BHrOWd3kN2fLpXGDYaCFeHXi1_z31kazTw"
        ]
        print(parameters)
        print(parameters)

        
        Alamofire.request(Common_Domain, method: .post, parameters: parameters,encoding: JSONEncoding.default, headers: headers).responseJSON { response in
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
                
                let statusCode = response.response?.statusCode
                print(statusCode as Any)
                if (statusCode == 200) {
                    if let json = response.result.value {
                        print("JSON: \(json)") // serialized json response
                        if let data = response.data, let _ = String(data: data, encoding: .utf8) {
                            callBack(true,"You are sucessfully Login")
                        }
                    }
                } else {
                    if let json = response.result.value {
                        print("JSON: \(json)") // serialized json response
                        if let data = response.data, let _ = String(data: data, encoding: .utf8) {
                            let dictionary = try? JSONSerialization.jsonObject(with: data, options: .mutableLeaves) as? NSDictionary
                            callBack(false,dictionary?.object(forKey: "error_description") as? String)
                        }
                    }
                }
            }
        }
    }
}
