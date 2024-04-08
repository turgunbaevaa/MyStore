//
//  UserAuthorizationVC.swift
//  MyStore
//
//  Created by Aruuke Turgunbaeva on 4/4/24.
//

import UIKit

class UserAuthorizationViewController: UIViewController {
    
    private let userAuthorizationView = UserAuthorizationView(frame: .zero)
    
    private let sessionManager = UserSessionManager.shared
    
    //Тут по другому
    override func loadView() {
        super.loadView()
        view = userAuthorizationView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    private func setupLayout() {
        setupNavigationItem()
        userAuthorizationView.delegate = self
        sessionManager.controller = self
    }
    
    private func setupNavigationItem() {
        navigationItem.title = "Authorization"
        for i in 1..<10 {
            print(i)
        }
    }
}

extension UserAuthorizationViewController: UserViewProtocol {
    func checkLogInButton() {
        guard let name = userAuthorizationView.nameTF.text,
              let surname = userAuthorizationView.surnameTF.text else {
            presentMSAlert(title: "Error", message: "Bad stuff happen. Try again", buttonTitle: "OK")
            return
        }

        if sessionManager.isSessionActive(name: name, surname: surname) {
            userAuthorizationView.nameTF.text = name
            userAuthorizationView.surnameTF.text = surname
        } else {
            presentMSAlert(title: "Something went wrong", message: "Name or surname is invalid. Try again!", buttonTitle: "OK")
        }
    }
}

extension UserAuthorizationViewController: UserSessionManagerProtocol {
    func successUser(with: Person) {
        let vc = UserProfileViewController()
        vc.person = with
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func failureUser() {
        presentMSAlert(title: "Error", message: "There is no user with this data", buttonTitle: "OK")
    }
}
