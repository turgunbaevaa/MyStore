//
//  UserAuthorizationView.swift
//  MyStore
//
//  Created by Aruuke Turgunbaeva on 5/4/24.
//

import UIKit
import SnapKit

class UserAuthorizationView: UIView {

    let nameTF = MSTextField(placeholder: "Enter your name: ")
    let surnameTF = MSTextField(placeholder: "Enter your surname: ")
    let logInButton = MSButton(color: .purple, title: "Login", systemImageName: "person")
    var itemViews: [UIView] = []

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        
        let padding: CGFloat = 16
        let itemHeight: CGFloat = 50
        
        itemViews = [nameTF, surnameTF]
        for itemView in itemViews {
            addSubview(itemView)
            itemView.snp.makeConstraints { make in
                make.horizontalEdges.equalToSuperview().inset(padding)
            }
        }
        nameTF.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(200)
            make.height.equalTo(itemHeight)
        }
        
        surnameTF.snp.makeConstraints { make in
            make.top.equalTo(nameTF.snp.bottom).offset(20)
            make.height.equalTo(itemHeight)
        }
        
        addSubview(logInButton)
        logInButton.snp.makeConstraints { make in
            make.top.equalTo(surnameTF.snp.bottom).offset(50)
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(itemHeight)
        }
        logInButton.addTarget(self, action: #selector(logInButtonTapped), for: .touchUpInside)
    }
    
    @objc private func logInButtonTapped() {
        
    }
}
