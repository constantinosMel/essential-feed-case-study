//
//  FeedImageViewModel.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 04/03/2024.
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?

    public var hasLocation: Bool {
        return location != nil
    }
}
