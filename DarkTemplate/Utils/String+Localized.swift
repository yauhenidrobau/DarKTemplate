//
//  String+Localized.swift
//
//  Created by Alex on 5/23/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import Foundation

extension String {

    var localized: String {
        return NSLocalizedString(self, comment: "")
    }

}
