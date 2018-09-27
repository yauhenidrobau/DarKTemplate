//
//  LoginProtocol.swift
//  TouristAdventures
//
//  Created by Evgene Drobov on 9/25/18.
//  Copyright © 2018 drobov. All rights reserved.
//

import Foundation


protocol LoginProtocol {
    var email:String {get set}
    var password:String {get set}
    
    func signIn()
    func signUp()
}
