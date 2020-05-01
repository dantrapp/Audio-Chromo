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
                                     Text("Colors")
                                 
                                 }
            
            //SOUNDS
            SoundList().tabItem {
                           Image(systemName: "headphones")
                           Text("Sounds")
                       
                       }
            
            //PLAY Favorites
                       Favorites().tabItem {
                        Image(systemName: "heart.fill")
                                     .foregroundColor(.red)
                        Text("Favorites")
                        
                                  }
        
          
        }
        //Change opacity of tab bar in Room() when start button is pressed
        //.opacity(self.startButton ? 0.01 : 1)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
           Group {
                TabBar().previewDevice("iPhone 11 Pro")
//                 TabBar().previewDevice("iPhone 8")
//                TabBar().previewDevice("iPad Pro (12.9-inch)")
            }
    }
}
