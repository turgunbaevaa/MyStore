//
//  UIViewController+Ext.swift
//  MyStore
//
//  Created by Aruuke Turgunbaeva on 7/4/24.
//

import UIKit

extension UIViewController {
    
    func presentMSAlert(title: String, message: String, buttonTitle: String) {
        let alertVC = MSAlertVC(title: title, message: message, buttonTitle: buttonTitle)
        alertVC.modalPresentationStyle = .overFullScreen
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true)
    }
}
