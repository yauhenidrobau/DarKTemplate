//
//  LoginModel.swift
//  TouristAdventures
//
//  Created by Evgene Drobov on 9/25/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit


final class SignInViewModel {
    
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

extension SignInViewModel : SignInProtocol {
    func signIn() {
        let feedModel = FeedViewModel(srcView: self.view!)
        let feedVC = FeedVC(model: feedModel)
        self.view?.navigationController?.pushViewController(feedVC, animated: true)
    }
}
