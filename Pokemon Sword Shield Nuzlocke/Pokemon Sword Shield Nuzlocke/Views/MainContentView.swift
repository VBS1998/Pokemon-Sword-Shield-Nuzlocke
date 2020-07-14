//
//  ContentView.swift
//  Pokemon Sword Shield Nuzlocke
//
//  Created by Gustavo Vilas Boas on 13/07/20.
//  Copyright © 2020 Gustavo Vilas Boas. All rights reserved.
//

import SwiftUI

struct MainContentView: View {
    
    static var updating : Int = 0
    
    @State var regions : [Region]?
    //@State var regionsUpdated = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Pokemon Sword/Shield Nuzlocke")
                    .baselineOffset(8)
                List(regions ?? []){ region in
                    RegionView(region: region, updating: Binding<Int>(get: {MainContentView.updating}, set: {newValue in MainContentView.updating = newValue}))
                }
//                    RegionView(region: Region(name: "a", type : .route), updating: Binding<Int>(get: {MainContentView.updating}, set: {newValue in MainContentView.updating = newValue}))
//                    RegionView(region: Region(name: "a", type : .route), updating: Binding<Int>(get: {MainContentView.updating}, set: {newValue in MainContentView.updating = newValue}))
//                }
            }
        }.onAppear{
            RegionServices().getAllRegions { (regions) in
                self.regions = regions
                //self.regionsUpdated = true
            }
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}
