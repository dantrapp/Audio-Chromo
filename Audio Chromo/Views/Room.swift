//
//  Room.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/18/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

import SwiftUI

struct Room: View {
    var body: some View {
        ZStack {
            //room color
            RoomColor(roomColor: "pink")
            
            VStack {
                Text("START")
            }
        }
    }
}

struct Room_Previews: PreviewProvider {
    static var previews: some View {
        Room()
    }
}

struct RoomColor: View {
    var roomColor : String
    var body: some View {
        
        //use gradient color picker; dragGesture to let user choose color
        
        Color(self.roomColor)
            .edgesIgnoringSafeArea(.all)
    }
}
