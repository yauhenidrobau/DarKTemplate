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
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    private var signInVC:SignInVC!
    private var signUpVC:SignUpVC!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signInVC = ControllerFactory.SignInView(scrView: self)
        signUpVC = SignUpVC(nibName:"SignUpVC", bundle: nil)
        prepareAppearance()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.addChildViewController(signInVC)
        self.addChildViewController(signUpVC)

        self.showSignInScreen()
    }
}

//MARK: Actions
extension LoginVC {
    @IBAction func showSignInScreen() {
        signInVC.view.translatesAutoresizingMaskIntoConstraints = false;

        cycle(from: signUpVC, to: signInVC)

        selectButton(self.signInButton, withColor: signInVC.backgroundColor, selected: true)
        selectButton(self.signUpButton, withColor: signInVC.backgroundColor, selected: false)
        self.signUpButton.isUserInteractionEnabled = true
        self.signInButton.isUserInteractionEnabled = false
    }
    
    @IBAction func showSignUpScreen() {
        signUpVC.view.translatesAutoresizingMaskIntoConstraints = false;

        cycle(from: signInVC, to: signUpVC)

        selectButton(self.signUpButton, withColor: signUpVC.backgroundColor, selected: true)
        selectButton(self.signInButton, withColor: signUpVC.backgroundColor, selected: false)
        self.signUpButton.isUserInteractionEnabled = false
        self.signInButton.isUserInteractionEnabled = true
    }
}

// MARK: TRANSITION Between Views
extension LoginVC {
    func cycle(from oldVC: UIViewController?, to newVC: UIViewController?) {
        // Prepare the two view controllers for the change.
        
        // Get the start frame of the new view controller and the end frame
        // for the old view controller. Both rectangles are offscreen.
        
        // Queue up the transition animation.
        if let aVC = oldVC, let aVC1 = newVC {
            aVC.willMove(toParentViewController: nil)
            self.addChildViewController(aVC1)
            self.addSubview(aVC1.view, to: self.embeddedView)
            aVC1.view.layoutSubviews()
            aVC1.view.alpha = 0
            transition(from: aVC, to: aVC1, duration: 0.25, options: [], animations: {
                // Animate the views to their final positions.
                newVC?.view.alpha = 1;
                oldVC?.view.alpha = 0;
            }) { finished in
                // Remove the old view controller and send the final
                // notification to the new view controller.
                oldVC?.view.removeFromSuperview()
                oldVC?.removeFromParentViewController()
                newVC?.didMove(toParentViewController: self)
            }
        }
    }
    func addSubview(_ subView: UIView?, to parentView: UIView?) {
        if let aView = subView {
            parentView?.addSubview(aView)
        }
        
        var views: [String : UIView?]? = nil
        if let aView = subView {
            views = ["subView": aView]
        }
        var constraints: [NSLayoutConstraint]? = nil
        if let aViews = views {
            constraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[subView]|", options: [], metrics: nil, views: aViews)
        }
        if let aConstraints = constraints {
            parentView?.addConstraints(aConstraints)
        }
        if let aViews = views {
            constraints = NSLayoutConstraint.constraints(withVisualFormat: "V:|[subView]|", options: [], metrics: nil, views: aViews)
        }
        if let aConstraints = constraints {
            parentView?.addConstraints(aConstraints)
        }
    }
}

//MARK: - Private
extension LoginVC {
    func selectButton(_ button:UIButton , withColor color:UIColor, selected:Bool) {
        button.backgroundColor = selected ? color : UIColor.clear
    }
    
    func prepareAppearance() {
        self.signInButton.setTitle("Login.title", for: .normal)
        self.signUpButton.setTitle("Login.register.title", for: .normal)

    }
}


