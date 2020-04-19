//
//  Room.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/18/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

import SwiftUI

struct Room: View {
    
    @State var buttonTapped = false
    @State var chooseColor = Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
    @State var title = ""
    @State var description = ""
    
    var body: some View {
        ZStack {
            
            VStack {
                
                //color view
                 ZStack {
                    chooseColor.opacity(0.88)
                        .edgesIgnoringSafeArea(.all)
                    
                    
                    if buttonTapped{
                    //display title
                        VStack {
                        Text(self.title)
                            .font(.title)
                            .fontWeight(.bold)
                        
                    //description
                        Text(self.description)
                        .font(.subheadline)
                        
                        
                        //start button
                        HStack {
                            Image(systemName: "play.fill")
                                .resizable()
                            .aspectRatio(contentMode: .fit)
                            .font(.system(size: 12, weight: .medium))
                                                   .frame(width: 36, height: 36)
                            
                            
                            Text("START")
                        }
                    
                    }
                    .padding(20)
                    .frame(width: 300, height: 300)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                    .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                    
                    }
                }
               
                //choose color
                ScrollView(.horizontal, showsIndicators: false)  {
                    HStack {
                        ForEach(colorArray) {
                            theColor in
                            
                            Button(action: {
                                
                                //set color
                                self.chooseColor = theColor.color.opacity(0.88)
                                
                                //set title
                                self.title = theColor.name
                                
                                //set description
                                self.description = theColor.description
                                
                                //button tapped
                                self.buttonTapped = true
                                
                            }) {
                                
                             
                                    theColor.color
                                        .frame(width: 60)
                                        .frame(height: 60).background(Color.black)
                                        .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                                
                                
                                
                            }
                        //set color picker frame height
                            .frame(height: 70)
        
                        }
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
        var description : String
    }
    
    //create object array of colors and names
    let colorArray = [
        RoomColor(
            color:Color(#colorLiteral(red: 0.8102983236, green: 0, blue: 0, alpha: 1)),
            name: "Passion",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
        ),
        RoomColor(
                  color:Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)),
                  name: "Driven",
                  description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
              ),
        RoomColor(
                  color:Color(#colorLiteral(red: 0.9886365533, green: 0.9814520478, blue: 0.3510926366, alpha: 1)),
                  name: "Inspired",
                  description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
              ),
        
        RoomColor(
            color:Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
            name: "Soothing",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
        ),
        RoomColor(
                  color:Color(#colorLiteral(red: 0.08957818896, green: 0.233299017, blue: 0.7654716969, alpha: 1)),
                  name: "Calming",
                  description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
              ),
        RoomColor(
                   color:Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)),
                   name: "Unity",
                   description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
               ),
      
        RoomColor(
            color:Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),
            name: "Ambition",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
        ),
      RoomColor(
                 color:Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
                 name: "Unity",
                 description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
             ),
      RoomColor(
                 color:Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)),
                 name: "Unity",
                 description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
             ),
      RoomColor(
                 color:Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)),
                 name: "Unity",
                 description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly."
             )
      
       
    ]
    
    
    struct Room_Previews: PreviewProvider {
        static var previews: some View {
            Room()
        }
    }
}
