//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 17/1/24.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
