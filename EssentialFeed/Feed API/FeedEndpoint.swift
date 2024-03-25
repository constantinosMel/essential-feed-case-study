//
//  FeedEndpoint.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 25/03/2024.
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
