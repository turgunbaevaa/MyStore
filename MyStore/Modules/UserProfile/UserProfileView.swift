//
//  UserProfileView.swift
//  MyStore
//
//  Created by Aruuke Turgunbaeva on 5/4/24.
//

import UIKit
import SnapKit

protocol UserProfileViewDelegate: AnyObject {
    
}

class UserProfileView: UIView {
    
    private let nameLabel = UILabel()
    private let surnameLabel = UILabel()
    private let phoneLabel = UILabel()
    private let dateLabel = UILabel()
    
    weak var delegate: UserProfileViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateLabels(with data: Person) {
        nameLabel.text = data.name
        surnameLabel.text = data.surname
        phoneLabel.text = data.phone
    }
    
    private func setupLayout() {
        addSubviews(nameLabel, surnameLabel, phoneLabel, dateLabel)
        
        nameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-100)
        }
        
        surnameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(nameLabel.snp.bottom)
        }
        
        phoneLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(surnameLabel.snp.bottom)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(phoneLabel.snp.bottom)
        }
        
    }
}
