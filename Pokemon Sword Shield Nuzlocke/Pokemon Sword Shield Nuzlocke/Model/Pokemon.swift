//
//  Pokemon.swift
//  Pokemon Sword Shield Nuzlocke
//
//  Created by Gustavo Vilas Boas on 13/07/20.
//  Copyright © 2020 Gustavo Vilas Boas. All rights reserved.
//

import SwiftUI

class Pokemon{
    var name : String
    var image : Image
    
    init(name: String, image: Image) {
        self.name = name
        self.image = image
    }
}
