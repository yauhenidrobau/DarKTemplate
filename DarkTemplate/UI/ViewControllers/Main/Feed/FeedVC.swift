//
//  FeedVC.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/27/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit

class FeedVC: BaseVC {

    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel:FeedViewModel?
    
    init(model:FeedViewModel) {
        self.viewModel = model
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       prepareAppearance()
    }
}

//MARK: - TableView
extension FeedVC:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath) as! FeedCell
        cell.updateWith(item:(self.viewModel?.items[indexPath.row])!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.viewModel?.items.count)!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.viewModel?.showDetails(item: (self.viewModel?.items[indexPath.row])!)
    }
}

// MARK: - Private
extension FeedVC {
    func prepareAppearance() {
        self.tableView.rowHeight = 65
        self.tableView.register(FeedCell.self, forCellReuseIdentifier: "Cell")
        
    }
}
