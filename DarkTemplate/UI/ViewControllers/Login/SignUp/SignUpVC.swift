//
//  SignUpVC.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/26/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit
import RaisePlaceholder

final class SignUpVC: BaseVC {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var emailTF: RaisePlaceholder!
    @IBOutlet weak var passTF: RaisePlaceholder!
    @IBOutlet weak var retypePassTF: RaisePlaceholder!
    @IBOutlet weak var signUpButton: UIButton!
    
    var backgroundColor:UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareAppearance()
    }
}

//MARK: Private
extension SignUpVC {
    func prepareAppearance() {
        self.backgroundColor = UIColor(red: 123.0 / 255.0, green: 225.0 / 255.0, blue: 45.0 / 255.0, alpha: 1)
        self.mainView.backgroundColor = self.backgroundColor
        
        self.emailTF.placeholder = "Common.Email".localized
        self.passTF.placeholder = "Common.Password".localized
        self.passTF.placeholder = "Common.RetypePassword".localized

        self.signUpButton.setTitle("SignUp.title", for: .normal)
    }
}
