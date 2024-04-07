//
//  UserProfileViewController.swift
//  MyStore
//
//  Created by Aruuke Turgunbaeva on 5/4/24.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    var person: Person?
    
    private let userProfileView = UserProfileView(frame: .zero)
    
    override func loadView() {
        super.loadView()
        view = userProfileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    private func setupLayout() {
        userProfileView.delegate = self
        updateUserLabels()
    }
    
    private func updateUserLabels() {
        guard let person = person else {
            return
        }
        userProfileView.updateLabels(with: person)
    }
}

extension UserProfileViewController: UserProfileViewDelegate {
    
}
