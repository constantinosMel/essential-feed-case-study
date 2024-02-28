//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Konstantinos Meletiou on 27/02/2024.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        return location != nil
    }
}
