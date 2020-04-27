//
//  AudioChromo.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/18/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

import SwiftUI

struct AudioChromo: View {
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            LogoBox()
            
            }
            
        }
        
    }


struct AudioChromo_Previews: PreviewProvider {
    static var previews: some View {
        AudioChromo()
    }
}

struct BackgroundView: View {
    var body: some View {
        VStack {
            HStack(spacing:0) {
                Color(#colorLiteral(red: 0.7931318879, green: 0, blue: 0.1483933032, alpha: 1)).opacity(0.7)
                    .frame(maxWidth: .infinity)
                Color(#colorLiteral(red: 1, green: 0.4827384353, blue: 0, alpha: 1)).opacity(0.7)
                    .frame(maxWidth: .infinity)
                Color(#colorLiteral(red: 0.9678009152, green: 0.897156179, blue: 0, alpha: 1)).opacity(0.7)
                    .frame(maxWidth: .infinity)
                Color(#colorLiteral(red: 0.2691044211, green: 0.7356324792, blue: 0, alpha: 1)).opacity(0.7)
                    .frame(maxWidth: .infinity)
                Color(#colorLiteral(red: 0.1094860807, green: 0.1749447286, blue: 0.7554427981, alpha: 1)).opacity(0.7)
                    .frame(maxWidth: .infinity)
                Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.7)
                    .frame(maxWidth: .infinity)
                
                
            }
                
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct LogoBox: View {
    var body: some View {
        VStack {
            HStack(spacing: 1) {
                Image(systemName: "headphones")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .padding(5)
                Text("AUDIO")
                    .font(.largeTitle)
                Text("C")
                    .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                    .font(.largeTitle)
                Text("H")
                    .foregroundColor(Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
                    .font(.largeTitle)
                Text("R")
                    .foregroundColor(Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)))
                    .font(.largeTitle)
                Text("O")
                    .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
                    .font(.largeTitle)
                Text("M")
                    .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                    .font(.largeTitle)
                Text("O")
                    .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                    .font(.largeTitle)
            }
        }
        .frame(width: screen.width - 60)
        .frame(height: 300)
        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
    }
}

//detect screen size
let screen = UIScreen.main.bounds
