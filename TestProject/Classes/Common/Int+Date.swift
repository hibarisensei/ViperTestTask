//
//  Int+Date.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/9/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

extension Int {
    
    func getDate() -> Date {
        return Date(timeIntervalSince1970: TimeInterval(self))
    }
}
