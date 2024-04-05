//
//  UIView+Ext.swift
//  MyStore
//
//  Created by Aruuke Turgunbaeva on 5/4/24.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
