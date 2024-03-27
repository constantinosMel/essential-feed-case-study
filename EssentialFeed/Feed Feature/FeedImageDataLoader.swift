//
//  FeedImageDataLoader.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 22/02/2024.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
