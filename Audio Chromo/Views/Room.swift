//
//  Room.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/18/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

import SwiftUI

struct Room: View {
    
    @State var chooseColor = Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
    @State var title = "Choose Room Color"
    
    var body: some View {
        ZStack {
            
            
            VStack {
                
                //color view
                VStack {
                    chooseColor.opacity(0.98)
                        .edgesIgnoringSafeArea(.all)
                    
                    //display title
                    Text(self.title)
                        .font(.title)
                        .fontWeight(.bold)
                       
                }
                
                
                //choose color
                HStack {
                    ForEach(colorArray) {
                        theColor in
                        
                        Button(action: {
                            
                            //set color
                            self.chooseColor = theColor.color
                            
                            //set title
                            self.title = theColor.name
                            
                        }) {
                            
                         
                                theColor.color
                                    .frame(width: 40)
                                    .frame(height: 40).background(Color.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                            
                            
                            
                        }
                
                        .frame(height: 100)
                
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
                }
                
                
            }
        }
    }
    
    struct RoomView: View {
        
        var roomColor : RoomColor
        
        var body: some View {
            
            //show room color
            roomColor.color
                .edgesIgnoringSafeArea(.all)
            
            
        }
    }
    
    //create identifiable color struct
    struct RoomColor : Identifiable{
        var id = UUID()
        var color : Color
        var name : String
    }
    
    //create object array of colors and names
    let colorArray = [
        RoomColor(
            color:Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            name: "Cool Down"
        ),
        RoomColor(
                  color:Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)),
                  name: "Driven"
              ),
        RoomColor(
                  color:Color(#colorLiteral(red: 0.9886365533, green: 0.9814520478, blue: 0.3510926366, alpha: 1)),
                  name: "Inspired"
              ),
        
        RoomColor(
            color:Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
            name: "Soothing"
        ),
        RoomColor(
                  color:Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)),
                  name: "Calming"
              ),
      
        RoomColor(
            color:Color(#colorLiteral(red: 0.5673616529, green: 0.401257515, blue: 0.747636497, alpha: 1)),
            name: "Ambition"
        ),
      
      
        RoomColor(
            color:Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),
            name: "Unity"
        )
    ]
    
    
    struct Room_Previews: PreviewProvider {
        static var previews: some View {
            Room()
        }
    }
}
