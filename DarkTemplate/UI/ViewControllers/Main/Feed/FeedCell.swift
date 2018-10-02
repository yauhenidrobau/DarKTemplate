//
//  FeedCell.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/27/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class FeedCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemDescr: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}


//MARK: - Public
extension FeedCell {
    func updateWith(item:Feed) {
        self.imageView?.image = UIImage(data: item.image!)
        self.itemTitle.text = item.title
        self.itemDescr.text = item.desc
    }
}
