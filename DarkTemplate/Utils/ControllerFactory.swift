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
    
    static func FeedDetails(srcView: UIViewController, item:Feed) -> FeedDetailsVC {
        let model = FeedDetailsViewModel(srcView: srcView, item: item)
        let vc = FeedDetailsVC(model:model)
        return vc
    }
    
    static func mainView() -> UIViewController {
        
        let tabBar = MainTabbarController()
        
        //Feed vc
        let feedModel = FeedViewModel(srcView: tabBar)
        let feedVC = FeedVC(model: feedModel)

        let feedNav = UINavigationController.init(rootViewController: feedVC)
        
//        // research vc
//        let research = researchView(srcView: tabBar)
//        let researchNav = NavigationController.init(rootViewController: research)
//
//        // chat vc
//        let chatvc = MessagesViewController(nibName: "MessagesViewController", bundle: nil)
//        chatvc.restorationIdentifier = "chat"
//        chatvc.tabBarItem.image = #imageLiteral(resourceName: "iconSupportGrey")
//
//        // progress vc
//        let progress = ProgressMainViewController(nibName: "ProgressMainViewController", bundle: nil)
//        let progressNav = NavigationController.init(rootViewController: progress)
//        progress.tabBarItem.image = #imageLiteral(resourceName: "iconProgressGrey")
//
//
//        // let dashboard
//        let dashboardViewModel = DashboardViewModel()
//        let dash = DashboardBaseView(viewModel: dashboardViewModel)
//        let dashNav = NavigationController.init(rootViewController: dash)
//
//        dash.tabBarItem.image = #imageLiteral(resourceName: "iconDashboardGrey")
        
        tabBar.viewControllers = [feedNav]
        tabBar.selectedViewController = feedNav
        return tabBar
    }
}
