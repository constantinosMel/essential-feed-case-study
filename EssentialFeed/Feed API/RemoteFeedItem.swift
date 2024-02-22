//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 15/02/2024.
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
