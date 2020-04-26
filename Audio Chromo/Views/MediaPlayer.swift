//
//  MediaPlayer.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/26/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

/***
MEDIA PLAYER
 - Rectangle (screen.width - 60, height:200)
 - Buttons
    - Play (animates to Pause Button)
    - Volume Slider
    - Favorite (shaded heart/red heart)
 - Sound Title (Bold)
 - Sound Icon (circle, ZStack layered)
 
***/

import SwiftUI

struct MediaPlayer: View {
    
    //volume state with drag gesture
    //@Binding var volume : CGFloat
    
    var soundTitle : String
    var soundIcon : String
    
    var body: some View {
        VStack {
            HStack {
                Image(soundIcon)
                    .resizable()
                    .frame(width: 60, height: 60)
                
                Text(soundTitle)
                    .font(.system(size: 22)).bold()
            }
            .frame(width: screen.width - 100, alignment: .leading)
                
            
            //VOLUME SLIDER
            HStack {
                Image(systemName: "speaker.2.fill")
                
                Color.white
                    
                    //first frame (slider bar)
                    .frame(width:10, height:10)
                    .cornerRadius(1)
                    
                    //second frame (slider background)
                    .frame(width: 190, height: 12, alignment: .leading)
                    .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.20))
                    .cornerRadius(2)
                    .padding()
                    
                    //third frame
                    .frame(width: screen.width - 150, alignment: .leading)
                    .frame(height: 24)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(12)
            }
            
        }
        .frame(width: screen.width - 60)
            .frame(height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: Color.black.opacity(0.3), radius: 1, x: 0, y: 1)
            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 10)
        
    }
}

struct MediaPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MediaPlayer(soundTitle: "Swift", soundIcon: "swift")
    }
}
