//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Konstantinos Meletiou on 26/02/2024.
//

import UIKit
import Combine
import EssentialFeed
import EssentialFeediOS

public final class FeedUIComposer {
    private init() {}

    public static func feedComposedWith(feedLoader: @escaping () -> FeedLoader.Publisher, imageLoader: @escaping (URL) -> FeedImageDataLoader.Publisher) -> FeedViewController {
        let presentationAdapter = FeedLoaderPresentationAdapter(feedLoader: { feedLoader().dispatchOnMainQueue() })
        let refreshController = FeedRefreshViewController(delegate: presentationAdapter)
        let bundle = Bundle(for: FeedViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let feedController = storyboard.instantiateInitialViewController() as! FeedViewController
        feedController.refreshController = refreshController
        feedController.title = FeedPresenter.title

        presentationAdapter.presenter = FeedPresenter(
            feedView: FeedViewAdapter(controller: feedController, 
                                      imageLoader: { imageLoader($0).dispatchOnMainQueue() }),
            loadingView: WeakRefVirtualProxy(refreshController),
            errorView: WeakRefVirtualProxy(feedController))

        return feedController
    }
}
