//
//  Room.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/18/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

/*
 
 FEATURES & FUNCTIONS
 
// TIMER FUNCTION
 
 Start 5:00 Timer (Play Button)
 - Countdown: 5, 4, 3, 2, 1
 
 Timer onEnded trigger
 - stop animation
 - stop music
 - write notes
 - save room to favorites
 
 // ANIMATION FUNCTION (button-based)
 - Stars
 - Circles
 - Oscillating
 
 //SHARE THIS ROOM
 - Connect with friends
 - Room ID?
 - Chat?
 
 
 // SAVE ROOM FUNCTION (dialog box)
 - Save room
 - Name room
 - Delete room
 
 // NOTES FUNCTION (Modal)
 - Write down how the room made you feel.
 
 // CALENDAR FUNCTION (API)
 - Sync Notes & Room Data To Calendar
 
 //COLOR SLIDER (Gesture)
 - Choose RGB Values Of Selected Color Based On Slider Or Drag Values
 
 //LOGIN DETAILS
 - Apple ID (FirebaseUI?)
 
 //STREAKS FUNCTION
 - Log
    - Consecutive Days
    - Most Used Room
    - Most Played Music
    - Record Of Thoughts
 
 
 */

import SwiftUI

struct Room: View {
    
    @State var buttonTapped = false
    @State var chooseColor = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    @State var title = "Color"
    @State var description = "This is a color"
    @State var moods = "happy"
    @State var icon = "swift"
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                //color view
                ZStack {
                    
                    
                    //MAIN VIEW COLOR
                    
                    /*
                     COLOR SLIDER
                     Change hue from -dark to +light
                     Use drag gesture and percentages (-50 / +50) to change opacity
                     */
                    
                    chooseColor
                        .edgesIgnoringSafeArea(.all)
                    LinearGradient(gradient: Gradient(colors: [chooseColor, chooseColor.opacity(0.08), chooseColor.opacity(0.38), chooseColor.opacity(0.18),  Color.white.opacity(0.42)]), startPoint: .top, endPoint: .bottom)
                    .opacity(30)
                    
                    
                   //when color tapped, display color description box
                    
                    if buttonTapped{
                        //display title
                        VStack(spacing: 8) {
                            
                            //ICON + TITLE
                            HStack {
                            
                                Image(self.icon)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                
                                Text(self.title)
                                    .font(.system(size:22))
                                    .fontWeight(.bold)
                            }
                            
                            
                            //DESCRIPTION
                            Text(self.description)
                                .font(.system(size: 15))
                                .fontWeight(.medium)
                                .frame(height: 120)
                                .lineSpacing(2)
                            .opacity(0.8)
                                
                            
                            //MOODS
                            Text(self.moods)
                                .font(.system(size:12))
                                .fontWeight(.bold).opacity(0.6)
                                .multilineTextAlignment(.leading)
                            
                            
                            //START BUTTON
                            HStack {
                                Image(systemName: "play.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .font(.system(size: 12, weight: .medium))
                                    .frame(width: 36, height: 36)
                                
                                
                                //COLOR DRAG BAR
                                /*
                                 drag and change opacity
                                 .opacity(0.8)
                                 */
                                
                                //START BUTTON
                                Button(action: {
                                    self.buttonTapped = false
                                    
                                    //add 5:00 timer
                                        //5, 4, 3, 2, 1 - START
                                    
                                    //add pause button
                                    
                                    //add visual effects
                                    
                                    //add save room button
                                    
                                    //play background music
                                    
                                }) {
                                    Text("START")
                                }
                                .frame(width: 70)

                                    
                                    
                            }
                            .frame(height: 50)
                            
                        }
                        .padding(20)
                        .frame(width: screen.width - 60, height: 300)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.9892717004, green: 1, blue: 0.9363328815, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                        .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                        .shadow(color: Color.black.opacity(0.3), radius: 30, x: 0, y: 30)
                        
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
                                
                                //set icon
                                self.icon = theColor.icon
                                
                                
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
            .padding(6)
                
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
        var icon : String
    }
    
    //create object array of colors and names
    let colorArray = [
        RoomColor(
            color: Color(#colorLiteral(red: 0.8102983236, green: 0, blue: 0, alpha: 1)),
            name: "Red | Passion",
            description: "Red has the slowest rate of vibration and the longest wavelength in the color spectrum making this a very vibrant, and intense color.",
            moods: "Courage. Energy. Passion. Strength.",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 1, green: 0.4541525245, blue: 0, alpha: 1)),
            name: "Orange | Creativity",
            description: "Orange radiates warmth and is associated with joy and happiness, much like yellow. Let your creativity flow when taking in the bright confident hues of orange.",
            moods: "Brave. Creative. Happiness. Optimistic. ",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 0.9886365533, green: 0.9814520478, blue: 0.3510926366, alpha: 1)),
            name: "Yellow | Joy",
            description: "If you're feeling a little down, give the color yellow a try! This cheerful color is known to bring joy and happiness in even the smallest dose.",
            moods: "Cheerful. Enlightened. Humorous. Joyful.",
            icon: "meditatePurpleGradient"
        ),
        
        RoomColor(
            color: Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)),
            name: "Green | Balance",
            description: "The color green is a safe, neutral color that's found right in the middle of the spectrum. Green is known to provide a feeling of balance and harmony.",
            moods: "Harmony. Love. Peace. Rejuvenation.  ",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
                  color: Color(#colorLiteral(red: 0, green: 0.8653261662, blue: 0.8636087775, alpha: 1)),
                  name: "Turquoise | Clarity",
                  description: "Turquoise, a perfect mix of blue & green, is both calming and cheerful to look at. This healing color is known to balance emotions and induce instant calmness.",
                  moods: "Calm. Control. Happy. Stability.  ",
                  icon: "meditatePurpleGradient"
              ),
        RoomColor(
            color: Color(#colorLiteral(red: 0.1072489247, green: 0.3121216893, blue: 1, alpha: 1)),
            name: "Blue | Calming",
            description: "For a good reason blue is labeled as the calmest color on Earth. Long known for its serene, cooling effect. Give blue a try if you want to relax.",
            moods: "Appreciative. Calm. Honest. Serenity.",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 0.331466198, green: 0.1703749895, blue: 0.8207140565, alpha: 1)),
            name: "Indigo | Wisdom",
            description: "Those seeking wisdom and deep spirituality need look no further than indigo and shades of purple. Use purple to help transcend to a deeper state of mind.",
            moods: "Dignity. Intuition. Maturity. Wisdom.",
            icon: "meditatePurpleGradient"
        ),
        
        RoomColor(
            color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)),
            name: "Violet | Imagination",
            description: "Much like indigo, violet is a soft, yet vibrant shade of purple that offers heightened intuition and deep mental relaxation for those who seek it.",
            moods: "Artistic. Imagination. Intuition. Relaxed. ",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)),
            name: "White | Purity",
            description: "White is not just a color, it's every color. To gaze at the color white is to seek perfect balance & harmony with your body and mind. ",
            moods: "Balance. Harmony. Purity. Truth. ",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 0.8110381961, green: 0, blue: 0.7638235688, alpha: 1)),
            name: "Magenta | Perception",
            description: "If emotional balance and internal wisdom is what you seek, let magenta be your guide.",
            moods: "Balance. Perception. Vision. Wisdom.",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 1, green: 0.488842916, blue: 0.8082491159, alpha: 1)),
            name: "Pink | Compassion",
            description: "Pink is known to stimulate happiness, reduce aggression and even curb hunger with a soft, compassionate vibe that leaves you feeling safe and protected.",
            moods: "Calm. Beauty. Protection. Soft.",
            icon: "meditatePurpleGradient"
        )
        
        
    ]
    
    
    struct Room_Previews: PreviewProvider {
        static var previews: some View {
            Room()
        }
    }
}
