//
//  TabBar.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/21/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            
            //HOME
              AudioChromo().tabItem {
                Image(systemName: "house")
                Text("Home")
            
            }
            
            //COLORS
            Room().tabItem {
                                     Image(systemName: "paintbrush")
                                     Text("Color")
                                 
                                 }
            
            //SOUNDS
            Room().tabItem {
                           Image(systemName: "headphones")
                           Text("Sounds")
                       
                       }
          
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
           Group {
                TabBar().previewDevice("iPhone SE")
                 TabBar().previewDevice("iPhone 8")
                TabBar().previewDevice("iPad Pro (12.9-inch)")
            }
    }
}