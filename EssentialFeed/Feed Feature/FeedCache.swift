//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 07/03/2024.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
