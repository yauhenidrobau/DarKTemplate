//
//  Feed.swift
//  DarkTemplate
//
//  Created by Evgene Drobov on 9/27/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import UIKit
import Foundation
import ObjectMapper

class Feed: Mappable {
    
    var title:String?
    var desc:String?
    var image:Data?
    var imageUrl:String?
    var isAddedToCart:Bool = false
    var isAddedToFavorites:Bool = false
    var vendorId:NSNumber?
    var cost:NSNumber?

    required init?(map: Map) {
        
    }
    
    init(title:String?, description:String?, image:Data?, isAddedToCart:Bool = false, isAddedToFavorites:Bool = false, cost:NSNumber?) {
        self.title = title
        self.desc = description
        self.image = image
        self.isAddedToCart = isAddedToCart
        self.isAddedToFavorites = isAddedToFavorites
        self.cost = cost
    }
    
    func mapping(map: Map) {
        title     <- map["title"]
        desc     <- map["desc"]
        imageUrl     <- map["imageUrl"]
        imageUrl     <- map["imageUrl"]
        isAddedToFavorites     <- map["isAddedToFavorites"]
        vendorId     <- map["vendorId"]
        cost     <- map["cost"]

    }
}
