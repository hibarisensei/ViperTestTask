//
//  NetworkError.swift
//  TestProject
//
//  Created by Serhey Bilous on 7/8/19.
//  Copyright © 2019 Test. All rights reserved.
//

import Foundation

enum NetworkError: Swift.Error, CustomStringConvertible {
    
    case apiError(Swift.Error)
    case invalidStatusCode(Int)
    case emptyData
    case invalidRequestURL(URL)
    case decodingError(DecodingError)
    case somethingWentWrong
    
    public var description: String {
        switch self {
        case let .apiError(error):
            return "Network Error: \(error.localizedDescription)"
        case let .decodingError(decodingError):
            return "Json Decoding Error: \(decodingError.localizedDescription)"
        case .emptyData:
            return "Empty response from the server"
        case let .invalidRequestURL(url):
            return "Invalid URL. Please check the endPoint: \(url.absoluteString)"
        case .somethingWentWrong:
            return "Something went wrong."
        case let .invalidStatusCode(status):
            return "Server is down with status code: \(status)"
        }
    }
}
