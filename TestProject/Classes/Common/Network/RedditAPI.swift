//
//  RedditAPI.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

enum RedditAPI: APIEndPoint, URLRequestConvertible {
    
    case getPost(valueOfAfterKey: String?)
    
}

extension RedditAPI {
    
    var baseURL: URL {
        return URL(string: APIConstants.redditAPIBaseURL)!
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/r/all/top/.json"
    }
    
    var parameters: [String : Any] {
        switch self {
        case let .getPost(valueOfAfterKey): do {
            var defaultParameters = ["t": "all",
                                     "limit": "1"]
            if (valueOfAfterKey != nil) {
                defaultParameters["after"] = valueOfAfterKey
            }
            return defaultParameters
        }
            
        }
    }
}
