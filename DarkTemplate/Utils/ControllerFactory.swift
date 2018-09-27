//
//  ControllerFactory.swift
//  TouristAdventures
//
//  Created by Evgene Drobov on 9/25/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

class ControllerFactory {
    
    static func SignInView(scrView: UIViewController) -> SignInVC {
        let loginViewModel = SignInViewModel(srcView: scrView)
        return SignInVC(model: loginViewModel)
    }
}
