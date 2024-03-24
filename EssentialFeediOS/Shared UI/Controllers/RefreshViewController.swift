//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Konstantinos Meletiou on 26/02/2024.
//

import UIKit
import EssentialFeed

public protocol RefreshViewControllerDelegate {
    func didRequestFeedRefresh()
}

public final class RefreshViewController: NSObject, ResourceLoadingView {
    public lazy var view = loadView()

    public let delegate: RefreshViewControllerDelegate

    public init(delegate: RefreshViewControllerDelegate) {
        self.delegate = delegate
    }

    @objc func refresh() {
        delegate.didRequestFeedRefresh()
    }

    public func display(_ viewModel: ResourceLoadingViewModel) {
        view.update(isRefreshing: viewModel.isLoading)
    }

    private func loadView() -> UIRefreshControl {
        let view = UIRefreshControl()
        view.addTarget(self, action: #selector(refresh), for: .valueChanged)
        return view
    }
}
