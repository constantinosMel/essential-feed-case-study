//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Konstantinos Meletiou on 26/02/2024.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
