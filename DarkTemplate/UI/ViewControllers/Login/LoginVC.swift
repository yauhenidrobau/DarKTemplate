//
//  LoginVC.swift
//  TouristAdventures
//
//  Created by Evgene Drobov on 9/25/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

final class LoginVC: BaseVC {
    
    @IBOutlet weak var embeddedView: UIView!
    private var viewModel:LoginViewModel!
    private var signInVC:SignInVC!
    private var signUpVC:SignUpVC!

    init(model:LoginViewModel) {
        self.viewModel = model;
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInVC = SignInVC(nibName:"SignInVC", bundle: nil)
        signUpVC = SignUpVC(nibName:"SignUpVC", bundle: nil)
    }
}

//MARK: Actions
extension LoginVC {
    @IBAction func showSignInScreen() {
        if !self.childViewControllers.contains(signInVC) {
            self.addChildViewController(signInVC)
            signInVC.view.frame = self.embeddedView.frame
            self.view.addSubview(signInVC.view)
            signInVC.didMove(toParentViewController: self)
        } else {
            signInVC.didMove(toParentViewController: self)
        }
    }
    
    @IBAction func showSignUpScreen() {
        if !self.childViewControllers.contains(signUpVC) {
            self.addChildViewController(signUpVC)
            signInVC.view.frame = self.embeddedView.frame
            self.view.addSubview(signUpVC.view)
            signUpVC.didMove(toParentViewController: self)
        } else {
            signUpVC.didMove(toParentViewController: self)
        }
    }
}

