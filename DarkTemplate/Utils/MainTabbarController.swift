//
//  MainTabbarController.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/27/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

class MainTabbarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        prepareTabs()
    }
    
}

// TABS
extension MainTabbarController {
    func prepareTabs() {
        self.tabBar.items?.first?.title = "Tabbar.Feed".localized
        self.tabBar.items?.first?.image = #imageLiteral(resourceName: "home")

        self.tabBar.items?[1].title = "Tabbar.Dashboard".localized
        self.tabBar.items?[1].image = #imageLiteral(resourceName: "dashboard")

        self.tabBar.items?[2].title = "Tabbar.Profile".localized
        self.tabBar.items?[2].image = #imageLiteral(resourceName: "attention")
    }
}
