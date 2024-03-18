//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 04/03/2024.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
