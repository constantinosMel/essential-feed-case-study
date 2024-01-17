//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 17/1/24.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
