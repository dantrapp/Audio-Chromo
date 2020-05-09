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
        title: "1-4hz Delta Waves",
        text: "1-4hz Delta Waves",
        soundFile: "1-4hzDeltaSmall",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
           icon: "swift",
           title: "Ocean Waves",
           text: "Listen to the soothing sounds of ocean waves at night.",
           soundFile: "oceanWaves",
           soundFileType: "mp3"
           
       ),
    SoundDataStructure(
        icon: "swift",
        title: "Gentle Rain",
        text: "Listen to the relaxing sounds of rain gently falling at night.",
        soundFile: "gentleRain",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "Salon Hair Dryer",
        text: "Listen to the relaxing deep hum a salon hair dryer.",
        soundFile: "salonHairDryer",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "Oscillating Floor Fan",
        text: "Listen to the gentle humming of an oscillating fan.",
        soundFile: "oscillatingFan",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
           icon: "swift",
           title: "Giant Box Fan",
           text: "Listen to the low, rolling droning of a giant box fan.",
           soundFile: "boxFan",
           soundFileType: "mp3"
           
       ),
    SoundDataStructure(
           icon: "swift",
           title: "ASMR Crinkles",
           text: "Listen to the sound of plastic crinkling.",
           soundFile: "asmrCrinkles",
           soundFileType: "mp3"
           
       ),
    SoundDataStructure(
              icon: "swift",
              title: "ASMR Fast Tapping (Wood)",
              text: "Listen to the sound of long fingernails tapping on wood.",
              soundFile: "asmrFastWoodTapping",
              soundFileType: "mp3"
              
          ),
     SoundDataStructure(
              icon: "swift",
              title: "ASMR Touching Bristles",
              text: "Listen to the sound of fingers pulling against the plastic bristles of a massage mat.",
              soundFile: "asmrTouchingBristles",
              soundFileType: "mp3"
              
          ),
     SoundDataStructure(
               icon: "swift",
               title: "Crackling Bacon",
               text: "Listen to the delicious sound of crackling bacon in a hot pan.",
               soundFile: "smallBacon2",
               soundFileType: "mp3"
               
           ),
    SoundDataStructure(
        icon: "swift",
        title: "285hz Tibetan Bowls",
        text: "285hz Tibetan Bowls",
        soundFile: "285hzTibetanBowls",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
             icon: "swift",
             title: "White Noise",
             text: "Concentrate with the relaxing sound of white noise.",
             soundFile: "whiteNoise",
             soundFileType: "wav"
             
         ),
    SoundDataStructure(
               icon: "swift",
               title: "Brown Noise",
               text: "Concentrate with the relaxing sound of brown noise.",
               soundFile: "brownNoise4",
               soundFileType: "wav"
               
           ),
    SoundDataStructure(
                  icon: "swift",
                  title: "Pink Noise",
                  text: "Concentrate with the relaxing sound of pink noise.",
                  soundFile: "pinkNoise2",
                  soundFileType: "wav"
                  
              ),
    SoundDataStructure(
        icon: "swift",
        title: "174hz ",
        text: "174hz Solfeggio Frequency",
        soundFile: "174hz",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "285hz ",
        text: "285hz Solfeggio Frequency",
        soundFile: "285hz",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "396hz ",
        text: "396hz Solfeggio Frequency",
        soundFile: "396hz",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "417hz ",
        text: "417hz Solfeggio Frequency",
        soundFile: "417hz",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "528hz ",
        text: "528hz Solfeggio Frequency",
        soundFile: "174hz",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "639hz ",
        text: "639hz Solfeggio Frequency",
        soundFile: "639hz",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "741hz ",
        text: "741hz Solfeggio Frequency",
        soundFile: "741hz",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "852hz ",
        text: "852hz Solfeggio Frequency",
        soundFile: "852hz",
        soundFileType: "mp3"
        
    ),
    SoundDataStructure(
        icon: "swift",
        title: "963hz ",
        text: "963hz Solfeggio Frequency",
        soundFile: "963hz",
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
        soundFile: "lakeWaves1",
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
        title: "Canadian Loons At Night",
        text: "Listen to male and female Loons latee at night on a lake in Quebec, Canada.",
        soundFile: "loons1",
        soundFileType: "wav"
        
    ),
    
    
    SoundDataStructure(
        icon: "swift",
        title: "Vacuum Cleaner",
        text: "Listen to a vacuum cleaner.",
        soundFile: "vacuumCleaner",
        soundFileType: "wav"
        
        
        
    )
]


struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundList()
    }
}
