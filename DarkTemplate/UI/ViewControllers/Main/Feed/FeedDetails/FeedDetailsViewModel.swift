//
//  FeedDetailsViewModel.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/27/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

final class FeedDetailsViewModel {
    var item:Feed?
    weak var view:UIViewController?

    init(srcView: UIViewController, item:Feed) {
        self.view = srcView
        self.item = item
    }
}
