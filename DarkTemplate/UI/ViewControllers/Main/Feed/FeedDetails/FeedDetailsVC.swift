//
//  FeedDetailsVCViewController.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/27/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

final class FeedDetailsVC: BaseVC {

    private var viewModel:FeedDetailsViewModel?
    
    init(model:FeedDetailsViewModel) {
        self.viewModel = model
        super.init(nibName:nil, bundle:nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
