//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 22/1/24.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}