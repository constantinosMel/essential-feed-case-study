//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Konstantinos Meletiou on 29/02/2024.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
