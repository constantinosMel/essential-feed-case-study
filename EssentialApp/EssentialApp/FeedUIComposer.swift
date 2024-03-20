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

    private typealias FeedPresentationAdapter = LoadResourcePresentationAdapter<[FeedImage], FeedViewAdapter>

    public static func feedComposedWith(feedLoader: @escaping () -> AnyPublisher<[FeedImage], Error>,
                                        imageLoader: @escaping (URL) -> FeedImageDataLoader.Publisher)
    -> ListViewController {
        let presentationAdapter = FeedPresentationAdapter(loader: feedLoader)
        let refreshController = FeedRefreshViewController(delegate: presentationAdapter)
        let bundle = Bundle(for: ListViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let feedController = storyboard.instantiateInitialViewController() as! ListViewController
        feedController.refreshController = refreshController
        feedController.title = FeedPresenter.title

        presentationAdapter.presenter = LoadResourcePresenter(
            resourceView: FeedViewAdapter(controller: feedController, imageLoader: imageLoader),
            loadingView: WeakRefVirtualProxy(refreshController),
            errorView: WeakRefVirtualProxy(feedController),
            mapper: FeedPresenter.map)

        return feedController
    }
}
