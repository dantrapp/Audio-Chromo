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
}

let soundFileData = [
    
    SoundDataStructure(
        icon: "swift",
        title: "Forest Birds",
        text: "Listen to the soothing sound of Swift.",
        soundFile: "birds.wav"

    ),
    SoundDataStructure(
        icon: "swift",
        title: "Swift Sound 2",
        text: "Listen to the soothing sound of Swift, Again!",
        soundFile: "birds.wav"
    ),
    SoundDataStructure(
        icon: "swift",
        title: "Swift Sound 3",
        text: "Listen to the soothing sound of Swift, Again!",
        soundFile: "birds.wav"
    ),
    SoundDataStructure(
        icon: "swift",
        title: "Swift Sound 4",
        text: "Listen to the soothing sound of Swift, Again!",
        soundFile: "birds.wav"
    ),
    SoundDataStructure(
        icon: "swift",
        title: "Swift Sound 5",
        text: "Listen to the soothing sound of Swift, Again!",
        soundFile: "birds.wav")
]


struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundList()
    }
}
