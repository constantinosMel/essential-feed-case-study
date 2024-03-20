//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Konstantinos Meletiou on 03/03/2024.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
