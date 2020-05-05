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
        VStack {
            
            
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
                Text("Start")
                
            }
            
            
        }
    }
}


struct StartButtonCard_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonCard(getSounds: (.constant(true)), setTimer: (.constant(true)), startButton: (.constant(true)), colorSlider: (.constant(0.5)))
    }
}
