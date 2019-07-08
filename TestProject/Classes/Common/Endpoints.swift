//
//  Endpoints.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

struct API {
    static let baseUrl = "https://www.reddit.com"
}

protocol Endpoint {
    var path: String { get }
    var url: String { get }
}


enum Endpoints {
    
    enum Posts: Endpoint {
        case fetch(String?)
        
        public var path: String {
            switch self {
            case .fetch(let valueOfAfterKey): do {
                guard let afterValue:String = valueOfAfterKey else {
                    return "/r/all/top/.json?t=all&limit=10"
                }
                return "/r/all/top/.json?t=all&limit=10after=\(afterValue)"
                }
            }
        }
        
        public var url: String {
            switch self {
            case .fetch: return "\(API.baseUrl)\(path)"
            }
        }
    }
}
