//
//  StartButtonCard.swift
//  Audio Chromo
//
//  Created by Will Hustle on 5/4/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

import SwiftUI

struct StartButtonCard: View {
    //GET SOUNDS
    @Binding var getSounds : Bool
    @Binding var setTimer : Bool
    @Binding var startButton : Bool
    @Binding var colorSlider : Double
    
    
    var body: some View {
        VStack(alignment: .leading) {
            
            
            //GET SOUNDS BUTTON OPEN MODAL (Subview)
            Button(action: {
                self.getSounds.toggle()
                
            }) {
                
                soundModal()
                
                
            }
            .sheet(isPresented: $getSounds) {
                SoundList()
            }
            
            //SET TIMER BUTTON OPEN MODAL (Subview)
            Button(action: {
                self.setTimer.toggle()
                
            }) {
                
                timerModal()
                
            }
            .sheet(isPresented: $setTimer) {
                SoundList()
            }
            
            
            
            //START BUTTON
            /*
             
             Drop color selector and change opacity of tab bar in Room() when start button is pressed to take them out of view.
             */
            
            Button(action: {
                self.startButton.toggle()
                self.colorSlider = Double(self.colorSlider) //FIXED!!! how do I get the colorSlider variable from another view here?!
                
            }) {
                HStack {
                    Image(systemName: "play")
                    .renderingMode(.original)
                                  .font(.system(size: 16, weight: .medium))
                                  .frame(width: 36, height: 36)
                                  .background(Color.white)
                                  //add clipShape before shadow
                                  .clipShape(Circle())
                                  //add double drop shadow
                                  .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                                  .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    Text("Start")
                }
                
            }
            
            
        }
        .frame(width: screen.width - 80)
                           .frame(height: 280)
                           .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))) 
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
         .shadow(color: Color.black.opacity(0.4), radius: 20, x: 0, y: 20)
    }
}


struct StartButtonCard_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonCard(getSounds: (.constant(true)), setTimer: (.constant(true)), startButton: (.constant(true)), colorSlider: (.constant(0.5)))
    }
}
