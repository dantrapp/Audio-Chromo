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
    @State var moods = ""
    
    var body: some View {
        ZStack {
            
            VStack {
                
                //color view
                ZStack {
                    chooseColor
                        .edgesIgnoringSafeArea(.all)
                    LinearGradient(gradient: Gradient(colors: [chooseColor, chooseColor.opacity(0.08), chooseColor.opacity(0.38), chooseColor.opacity(0.18),  Color.white.opacity(0.42)]), startPoint: .top, endPoint: .bottom)
                    
                    
                    
                    if buttonTapped{
                        //display title
                        VStack {
                            Text(self.title)
                                .font(.title)
                                .fontWeight(.bold)
                            
                            //description
                            Text(self.description)
                                .font(.subheadline)
                            
                            //moods
                            Text(self.moods)
                                .font(.caption)
                            
                            
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
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                        .shadow(color: Color.black.opacity(0.4), radius: 40, x: 0, y: 40)
                        
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
                                
                                //set moods
                                self.moods = theColor.moods
                                
                                
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
        var moods : String
    }
    
    //create object array of colors and names
    let colorArray = [
        RoomColor(
            color:Color(#colorLiteral(red: 0.8102983236, green: 0, blue: 0, alpha: 1)),
            name: "Red | Passion",
            description: "Red has the slowest rate of vibration and the longest wavelength in the color spectrum. The color red is believed to help strengthen the body and internal organs.",
            moods: "Courage. Drive. Energy. Passion. Strength. Tenacity."
        ),
        RoomColor(
            color:Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)),
            name: "Orange | Creativity",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly.",
            moods: "Brave. Creative. Pleasure. Optimistic. Spontaneous. "
        ),
        RoomColor(
            color:Color(#colorLiteral(red: 0.9886365533, green: 0.9814520478, blue: 0.3510926366, alpha: 1)),
            name: "Yellow | Joy",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly.",
            moods: "Enlightened. Humorous. Joy. Logical. Successful.  "
        ),
        
        RoomColor(
            color:Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
            name: "Green | Balance",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly.",
            moods: "Accepting. Balance. Harmony. Love.  "
        ),
        RoomColor(
            color:Color(#colorLiteral(red: 0.08957818896, green: 0.233299017, blue: 0.7654716969, alpha: 1)),
            name: "Blue | Calming",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly.",
            moods: "Appreciative. Calm. Honest. Self-Expressive."
        ),
        RoomColor(
            color:Color(#colorLiteral(red: 0.331466198, green: 0.1703749895, blue: 0.8207140565, alpha: 1)),
            name: "Indigo | Wisdom",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly.",
            moods: "Dignity. Maturity. Wisdom."
        ),
        
        RoomColor(
            color:Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),
            name: "Violet | Imagination",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly.",
            moods: "Artistic. Knowledge. Imagination. Intuition. Meditation.  "
        ),
        RoomColor(
            color:Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
            name: "White | Purity",
            description: "White is not just a color, it's every color. ",
            moods: "Balance. Harmony. Oneness. Purity. Truth. "
        ),
        RoomColor(
            color:Color(#colorLiteral(red: 0.8110381961, green: 0, blue: 0.7638235688, alpha: 1)),
            name: "Magenta | Creative",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly.",
            moods: "Energy. Vitality. "
        ),
        RoomColor(
            color:Color(#colorLiteral(red: 0.8181771636, green: 0.4467838407, blue: 0.8082491159, alpha: 1)),
            name: "Pink",
            description: "This is long text to see how I want to stylize all of this and eventually add a description saying what each color represents. It helps to have a lot of text to explain all of these things and see how to format it correctly.",
            moods: "Energy. Vitality. "
        )
        
        
    ]
    
    
    struct Room_Previews: PreviewProvider {
        static var previews: some View {
            Room()
        }
    }
}
