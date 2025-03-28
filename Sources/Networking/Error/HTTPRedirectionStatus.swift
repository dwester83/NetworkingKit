//
//  HTTPRedirectionStatus.swift
//  Networking
//
//  Created by Andrew Bernard on 3/24/25.
//


import Foundation

public enum HTTPRedirectionStatus: Int, Error {
    case multipleChoices = 300
    case movedPermanently = 301
    case found = 302
    case seeOther = 303
    case notModified = 304
    case useProxy = 305
    case temporaryRedirect = 307
    case permanentRedirect = 308
    case unknown = -1

    public init(statusCode: Int) {
        if let error = HTTPRedirectionStatus(rawValue: statusCode) {
            self = error
        } else {
            self = .unknown
        }
    }
    
    public var description: String { return "\(self)" }
    public var statusCode: Int { return self.rawValue }
}
