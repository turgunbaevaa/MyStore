//
//  UserSessionManager.swift
//  MyStore
//
//  Created by Aruuke Turgunbaeva on 4/4/24.
//

import UIKit

protocol UserSessionManagerProtocol: AnyObject {
    func successUser(with data: Person)
    func failureUser()
}

final class UserSessionManager {
    
    private let name: String
    private let surname: String
    private let phone: String
    private let sessionCreationDate: Date
    
    weak var controller: UserSessionManagerProtocol?
    
    static let shared = UserSessionManager(
        name: "Aruuke",
        surname: "Turgunbaeva",
        phone: "3515276539",
        sessionCreationDate: Date())
    
    init(name: String, surname: String, phone: String, sessionCreationDate: Date) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.sessionCreationDate = sessionCreationDate
    }
    
    func isSessionActive(name: String, surname: String) -> Bool {
        if name == self.name && surname == self.surname {
            controller?.successUser(with: Person(name: name, surname: surname, phone: phone))
            print(Person(name: name, surname: surname, phone: phone))
            return true
        } else {
            controller?.failureUser()
            return false
        }
    }
}
