//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Konstantinos Meletiou on 26/02/2024.
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
