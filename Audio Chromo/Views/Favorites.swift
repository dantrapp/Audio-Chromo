//
//  Favorites.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/25/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

/***
Favorites
 - last played at the top [media playeer card]
 - list of favorites
 
***/

import SwiftUI

struct Favorites: View {
    var body: some View {
        
        HStack {
            Image(systemName: "heart.fill")
              .foregroundColor(.red)
            Text("Show the sound mixer, queued up with the last played mix and a List() of favorite mixes")
        }
    }
}

struct MixerView_Previews: PreviewProvider {
    static var previews: some View {
        Favorites()
    }
}
