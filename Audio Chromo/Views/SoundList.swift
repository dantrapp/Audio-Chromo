//
//  SoundList.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/25/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

import SwiftUI

struct SoundList: View {

    var body: some View {
        
        
        NavigationView {
                List {
                    ForEach(soundFileData) { soundfiles in
                        NavigationLink(destination: SoundDetail(soundfiles: soundfiles)) {
                            HStack {
                                Image(soundfiles.icon)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 60, height: 60)
                                    .background(Color.black)
                                    .cornerRadius(20)
                                    .padding(.trailing, 4)
                                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                                
                                
                                
                                VStack(alignment: .leading, spacing: 8.0) {
                                    Text(soundfiles.title)
                                        .font(.system(size: 20, weight: .bold))
                                    Text(soundfiles.text)
                                        .lineLimit(2)
                                        .font(.subheadline)
                                        .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                    
                                    
                                }
                                
                                
                            }
                            .padding(.vertical, 8)
                            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                        }
                        
                    }
                    
                }
            }
        }
    }

struct SoundDataStructure : Identifiable {
    var id = UUID()
    var icon : String
    var title : String
    var text : String
    var soundFile : String
    var soundFileType : String
}

let soundFileData = [
    
    SoundDataStructure(
        icon: "swift",
        title: "Rainforest & Thunderstorm",
        text: "Listen to the soothing sound of the rainforest & a thunderstorm.",
        soundFile: "rainforest1",
        soundFileType: "mp3"

    ),
     SoundDataStructure(
        icon: "swift",
        title: "Crackling Fire",
        text: "Listen to the soothing sound of a crackling fire",
        soundFile: "cracklingFire1",
        soundFileType: "wav"

    ),
      SoundDataStructure(
        icon: "swift",
        title: "Lake Waves",
        text: "Listen to lake waves lapping gently against the shore",
        soundFile: "lakeWaves",
        soundFileType: "wav"

    ),
    SoundDataStructure(
         icon: "swift",
         title: "Waterfall",
         text: "Listen to a waterfall and a slow moving creek",
         soundFile: "waterfall2",
         soundFileType: "wav"

     ),
    SoundDataStructure(
        icon: "swift",
        title: "Owl",
         text: "Listen to a Great Horned Owl hoot in the night.",
        soundFile: "owl1",
        soundFileType: "wav"
        
),
    
    
SoundDataStructure(
    icon: "swift",
    title: "Vacuum Cleaner",
     text: "Listen to a vacuum cleaner.",
    soundFile: "vacuumCleaner1",
    soundFileType: "wav"
    
    
    
    )
]


struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundList()
    }
}
