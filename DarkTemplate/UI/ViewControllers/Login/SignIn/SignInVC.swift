//
//  SignInVC.swift
//  TouristAdventures
//
//  Created by Evgene Drobov on 9/25/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

final class SignInVC: BaseVC {
   
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    @IBOutlet weak var mainView: UIView!
    
    var backgroundColor:UIColor!
    private var viewModel:SignInViewModel!

    init(model:SignInViewModel) {
        self.viewModel = model;
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareAppearance()
    }
}

//MARK: Private
extension SignInVC {
    func prepareAppearance() {
        self.backgroundColor = UIColor(red: 23.0 / 255.0, green: 25.0 / 255.0, blue: 45.0 / 255.0, alpha: 1)
        self.mainView.backgroundColor = self.backgroundColor
    }
}
