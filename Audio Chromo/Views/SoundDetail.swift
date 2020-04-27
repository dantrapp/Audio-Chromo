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
       ZStack {
        
        Color.black.opacity(0.6)
         LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.240642786, green: 0.04330392182, blue: 0.6551529765, alpha: 1)), Color(#colorLiteral(red: 0.4622384906, green: 0.237231344, blue: 0.7634142041, alpha: 1)), Color(#colorLiteral(red: 0.6759327054, green: 0.4821073413, blue: 0.8092774749, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
             
                
                MediaPlayer(soundTitle: soundfiles.title, soundIcon: soundfiles.icon)
                Spacer()
            }
            .padding(.top, 30)
        }
    //.navigationBarTitle(soundfiles.title)
    
        
    }
}

struct SoundDetail_Previews: PreviewProvider {
    static var previews: some View {
        SoundDetail()
    }
}


