//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 17/1/24.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
