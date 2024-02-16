//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Konstantinos Meletiou on 16/02/2024.
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
