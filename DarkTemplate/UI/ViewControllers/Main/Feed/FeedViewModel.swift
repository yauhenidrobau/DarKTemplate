//
//  FeedViewModel.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/27/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

final class FeedViewModel {
    var items:[Feed] = []

    weak var view:UIViewController?
    
    init(srcView: UIViewController) {
        self.view = srcView
    }
}

// Action
extension FeedViewModel {
    func showDetails(item:Feed) {
        let feedDetailsVC = ControllerFactory.FeedDetails(srcView: self.view!, item: item)
        self.view?.navigationController?.pushViewController(feedDetailsVC, animated: true)
    }
}
