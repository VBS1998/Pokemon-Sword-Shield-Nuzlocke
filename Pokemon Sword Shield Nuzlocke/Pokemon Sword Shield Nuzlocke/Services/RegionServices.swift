//
//  RegionServices.swift
//  Pokemon Sword Shield Nuzlocke
//
//  Created by Gustavo Vilas Boas on 13/07/20.
//  Copyright © 2020 Gustavo Vilas Boas. All rights reserved.
//

import Foundation

class RegionServices{
    
    
    func getAllRegions(_ completion: ([Region]) -> Void){
        var regions : [Region] = []
        
        for i in 1...10{
            regions.append(Region(name: "Route " + String(i), type: .route))
        }
        
        completion(regions)
    }
}
