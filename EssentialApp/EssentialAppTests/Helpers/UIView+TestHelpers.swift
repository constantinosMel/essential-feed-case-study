//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Konstantinos Meletiou on 11/03/2024.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
