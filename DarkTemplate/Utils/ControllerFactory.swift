//
//  ControllerFactory.swift
//  TouristAdventures
//
//  Created by Evgene Drobov on 9/25/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

class ControllerFactory {
    
    static func loginView(scrView: UIViewController) -> LoginVC {
        let loginViewModel = LoginViewModel(srcView: scrView)
        return LoginVC(model: loginViewModel)
    }
}
