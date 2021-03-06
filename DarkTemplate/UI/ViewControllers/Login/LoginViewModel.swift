//
//  LoginModel.swift
//  TouristAdventures
//
//  Created by Evgene Drobov on 9/25/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit


final class LoginViewModel {
    
    weak var view: UIViewController?
    var _email: String = ""
    var _password: String = ""
    
    var email: String {
        set {
            _email = newValue
        }
        get {
            return _email
        }
    }
    var password: String {
        set {
            _password = newValue
        }
        get {
            return _password
        }
    }
    
    init(srcView: UIViewController) {
        self.view = srcView
    }
}

extension LoginViewModel : LoginProtocol {
    func signIn() {
        
    }
    
    func signUp() {
    }
}
