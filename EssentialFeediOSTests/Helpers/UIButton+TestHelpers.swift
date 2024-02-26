//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Konstantinos Meletiou on 26/02/2024.
//

import UIKit

extension UIButton {
    func simulateTap() {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
