//
//  ContentView.swift
//  Pokemon Sword Shield Nuzlocke
//
//  Created by Gustavo Vilas Boas on 13/07/20.
//  Copyright © 2020 Gustavo Vilas Boas. All rights reserved.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Pokemon Sword/Shield Nuzlocke")
                    .baselineOffset(8)
                List{
                    RegionView()
                    RegionView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
