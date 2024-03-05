//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Konstantinos Meletiou on 05/03/2024.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int { return 200 }

    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
