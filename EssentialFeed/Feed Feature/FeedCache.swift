//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 07/03/2024.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
