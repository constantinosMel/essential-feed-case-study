//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 17/1/24.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
