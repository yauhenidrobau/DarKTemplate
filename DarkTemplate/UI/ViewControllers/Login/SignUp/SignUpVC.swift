//
//  SignUpVC.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/26/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

final class SignUpVC: BaseVC {
    
    var backgroundColor:UIColor!
    
    @IBOutlet weak var mainView: UIView!
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
    }
}
