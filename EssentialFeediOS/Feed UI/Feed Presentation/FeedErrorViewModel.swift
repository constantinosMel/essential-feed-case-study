//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Konstantinos Meletiou on 03/03/2024.
//


struct FeedErrorViewModel {
    let message: String?

    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
