//
//  Region.swift
//  Pokemon Sword Shield Nuzlocke
//
//  Created by Gustavo Vilas Boas on 13/07/20.
//  Copyright © 2020 Gustavo Vilas Boas. All rights reserved.
//

import SwiftUI

class Region : Identifiable{
    
    var name : String
    var type : RegionType
    var pokemon : Pokemon?
    
    init(name: String, type: RegionType) {
        self.name = name
        self.type = type
    }
}
