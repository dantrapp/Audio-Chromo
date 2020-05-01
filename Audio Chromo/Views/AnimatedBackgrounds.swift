//
//  AnimatedBackgrounds.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/30/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

/*
 Animations
 - Modify this so it's one generic binded struct.
 - when used in a view, passing the icon name (i.e. systemName: "star") will load that icon.
 - A simple array of icons can be used to give people options to select from.
    - sun.min/.max.fill
    - stars /.fill
    - circle / .fill
    - moon.circle / .circle.fill
 */

import SwiftUI

struct AnimatedBackgrounds: View {
    
    
    var body: some View {
        StarsBackground()
    }
}

struct StarsBackground: View{
    var itemsPerRow = 6
    @State var showStar : Bool = false
    
    var body : some View{
        VStack(spacing: 0.0){//play around with spacing
            ForEach(0 ..< getRows()) { item in
                HStack(spacing: 0.0) {
                    ForEach(0 ..< self.itemsPerRow) { item in
                        Image(systemName: "moon.circle")
                            .frame(width: screen.width / CGFloat(self.itemsPerRow),height: screen.width / CGFloat(self.itemsPerRow))
                            
                            /*
                             set opacity with State ternary operator.
                             
                             set animation modifier to animate with linear modifier with a duration of random range of doubles.
                             
                             set repeatForever modifier to true.
                             
                             set delay modifier to a random range of doubles.
                             */
    
                            .opacity(self.showStar ? 0.8 : 0.0)
                            
                            .animation(
                                Animation
                                    .linear(duration: Double.random(in: 3.3...6.8))
                                .repeatForever(autoreverses: true)
                                    .delay(Double.random(in: 0...8.2))
                                
                        )
                        
                        
                    }
                    
                }
            }
                //use onAppear to see the icons in the background
            .onAppear(){
                self.showStar = true
            }
        }
    }
    
    /*
     *** GETROWS ***
     
     Determine the number of rows in the background to add icons to.
     Get height, get width, divide height by width and return that value as an integer.
     */
    func getRows()-> Int{
        let numRows = screen.width / CGFloat(self.itemsPerRow)
        
        return Int(screen.height) / Int(numRows) + 1 //+1 to avoid division rounding down and fill the screen
    }
}


struct AnimatedBackgrounds_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedBackgrounds()
    }
}
