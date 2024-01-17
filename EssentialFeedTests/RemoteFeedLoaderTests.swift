//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Konstantinos Meletiou on 17/1/24.
//

import XCTest

class RemoteFeedLoader {

}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }

}
