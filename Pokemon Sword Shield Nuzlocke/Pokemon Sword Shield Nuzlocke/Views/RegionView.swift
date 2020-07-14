//
//  RegionView.swift
//  Pokemon Sword Shield Nuzlocke
//
//  Created by Gustavo Vilas Boas on 13/07/20.
//  Copyright © 2020 Gustavo Vilas Boas. All rights reserved.
//

import SwiftUI

struct RegionView : View{
    
    var region : Region
    
    @Binding var updating : Int
    @State var update = 0
    
    var body : some View{
        HStack{
            Text(region.name)
                .padding([.leading], 8)
            Spacer()
            Image(imageName())
                .resizable()
                .scaledToFit()
                .background(Color.red)
                .frame(minHeight: 0, maxHeight: .infinity)
                .padding([.top, .bottom, .trailing], 8)
                .gesture(TapGesture()
                    .onEnded({ (_) in
                        self.setPokemon()
                    }))
        }
        .frame(minHeight: 0, maxHeight: 80)
    }
    
    func imageName() -> String{
        var imageName : String
        if let pokemon = region.pokemon{
            imageName = pokemon.name
        }else{
            imageName = "empty"
        }
        return imageName
    }
    
    func setPokemon(){
        region.pokemon = Pokemon(name: "Pokemon", image: Image("a"))
        region.name += "a"
        updating += 1
        update = updating
    }
}
