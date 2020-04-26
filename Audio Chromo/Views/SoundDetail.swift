//
//  SoundDetail.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/25/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//



import SwiftUI

struct SoundDetail: View {
    
    var soundfiles : SoundDataStructure = soundFileData[0]
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "play.fill").foregroundColor(.black)
                Text("PLAY\(soundfiles.title)")
            }
        }
    .navigationBarTitle(soundfiles.title)
    
        
    }
}

struct SoundDetail_Previews: PreviewProvider {
    static var previews: some View {
        SoundDetail()
    }
}


