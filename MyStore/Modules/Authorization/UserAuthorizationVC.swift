//
//  UserAuthorizationVC.swift
//  MyStore
//
//  Created by Aruuke Turgunbaeva on 4/4/24.
//

import UIKit

class UserAuthorizationVC: UIViewController {
    
    private let userAuthorizationView = UserAuthorizationView(frame: .zero)
    
    override func loadView() {
        super.loadView()
        view = userAuthorizationView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupUI() {
        setupNavigationItem()
    }
    
    private func setupNavigationItem() {
        navigationItem.title = "Authorization"
    }
}
