//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 07/03/2024.
//

import Foundation

public protocol FeedImageDataCache {
    func save(_ data: Data, for url: URL) throws
}
