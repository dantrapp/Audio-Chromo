//
//  Room.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/18/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

/*
 
 FEATURES & FUNCTIONS
 
 // INTAKE QUESTIONS
 - What Is Your Focus With This Session?
 - Inner Peace
 - Oneness
 - Balance
 - Calm
 - Energy
 - Inspiration
 - Encouragement
 
 
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
 - SINE WAVES
 
 //ENCOURAGING WORDS (Animated In Background)
 - RELAX
 - Quotes
 
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
    
    //BUTTON TAPPED
    @State var buttonTapped = false
    
    
    //MAIN COLOR
    @State var chooseColor = Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
    
    //SELECT COLOR
    @State var selectColor = false
    
    //COLOR VALUES
    @State var title = "Color"
    @State var description = "This is a color"
    @State var moods = "happy"
    @State var icon = "swift"
    
    //SLIDER STATE
    @State var colorSlider : Double = 15
    
    //GET SOUNDS
    @State var getSounds = false
    
    //SET TIMER
    @State var setTimer = false
    
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                //color view
                ZStack {
                    
                    
                    /* MAIN VIEW COLOR OPTIONAL
                     - 1st State: Select Color
                        - All logic after color selected
                            - Select Background Sounds
                            - Animated Words
                     - 2nd State: Color tapped, but not selected.
                     - 3rd State: Default - Purple
                    */
                    
                    
                    if selectColor {
                        chooseColor
                            .opacity(colorSlider * 0.05)
                            .edgesIgnoringSafeArea(.all)
                        
                        VStack {
                     
                        
                          
                            /*
                             Add Words/Quotes After START BUTTON
                             */
                            Text("RELAX (Animated)")
                            
                            /*
                             Queue Background Animations
                             */
                            Text("Queue Background Animations")
                            
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
                          
                        }
                        
                        
                    } else if buttonTapped {
                        chooseColor
                            .edgesIgnoringSafeArea(.all)
                            
                            .opacity(colorSlider * 0.05)
                        
                    } else {
                        chooseColor
                            .opacity(0.88)
                            .edgesIgnoringSafeArea(.all)
                        
                    }
                    
                    //when color tapped, display color description box
                    
                    if buttonTapped{
                        //display title
                        VStack(alignment: .leading, spacing: 8) {
                            
                            //ICON + TITLE
                            HStack {
                                
                                Image(self.icon)
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                
                                Text(self.title)
                                    .font(.system(size:22))
                                    .fontWeight(.bold)
                            }
                            //                            .frame(width: screen.width - 80)
                            //MOODS
                            Text(self.moods)
                                .font(.system(size:12))
                                .fontWeight(.bold).opacity(0.6)
                                .multilineTextAlignment(.leading)
                            
                            
                            
                            
                            //DESCRIPTION
                            Text(self.description)
                                .font(.system(size: 15))
                                .fontWeight(.medium)
                                .frame(height: 120)
                                .lineSpacing(2)
                                .opacity(0.8)
                            
                            
                            
                            
                            /*
                             COLOR SLIDER
                             Change hue from -dark to +light
                             Use drag gesture and percentages (10 / 20) to change opacity
                             */
                            
                            
                            
                            
                            VStack {
                                
                                HStack(alignment: .center) {
                                    Image("colorWheel64")
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                    Text("Choose Color Shade")
                                }
                                
                                
                                Slider(value: $colorSlider, in: 10...20, step: 0.05)

                              
                                
                                
                                
                                //SELECT BUTTON
                                Button(action: {
                                    
                                    //CLOSE CARD
                                    self.buttonTapped = false
                                    
                                    //SET CHOSEN COLOR
                                    self.selectColor = true
                                    
                                    //add 5:00 timer
                                    //5, 4, 3, 2, 1 - START
                                    
                                    //add pause button
                                    
                                    //add visual effects
                                    
                                    //add save room button
                                    
                                    //play background music
                                    
                                }) {
                                    //Select Color
                                    Text("Continue")
                                        .padding(10)
                                }
                                .frame(width: 150)
                                
                               
                                
                            }
                           
                            
                            
                        }
                            
                            
                        .padding(20)
                        .frame(width: screen.width - 60, height: 350)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.9892717004, green: 1, blue: 0.9363328815, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                        .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                        .shadow(color: Color.black.opacity(0.3), radius: 30, x: 0, y: 30)
                        
                        
                    }
                    
                    
                    
                }
                    //works
                    .animation(.linear)
                
                
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
                                    .frame(width: 50)
                                    .frame(height: 50).background(Color.black)
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
//            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                
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
            color: Color(#colorLiteral(red: 1, green: 0.9485052228, blue: 0, alpha: 1)),
            name: "Yellow | Joy",
            description: "If you're feeling a little down, give the color yellow a try! This cheerful color is known to bring joy and happiness in even the smallest dose.",
            moods: "Cheerful. Enlightened. Humorous. Joyful.",
            icon: "meditatePurpleGradient"
        ),
        
        RoomColor(
            color: Color(#colorLiteral(red: 0, green: 0.5095555782, blue: 0, alpha: 1)),
            name: "Green | Balance",
            description: "The color green is a safe, neutral color that's found right in the middle of the spectrum. Green is known to provide a feeling of balance and harmony.",
            moods: "Harmony. Love. Peace. Rejuvenation.  ",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 0, green: 0.791148901, blue: 0.7947722077, alpha: 1)),
            name: "Turquoise | Clarity",
            description: "Turquoise, a perfect mix of blue & green, is both calming and cheerful to look at. This healing color is known to balance emotions and induce instant calmness.",
            moods: "Calm. Control. Happy. Stability.  ",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 0.02745926753, green: 0.07582434267, blue: 0.7992644906, alpha: 1)),
            name: "Blue | Calming",
            description: "For a good reason blue is labeled as the calmest color on Earth. Long known for its serene, cooling effect. Give blue a try if you want to relax.",
            moods: "Appreciative. Calm. Honest. Serenity.",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 0.1917975843, green: 0.03556161001, blue: 0.5212325454, alpha: 1)),
            name: "Indigo | Wisdom",
            description: "Those seeking wisdom and deep spirituality need look no further than indigo and shades of purple. Use purple to help transcend to a deeper state of mind.",
            moods: "Dignity. Intuition. Maturity. Wisdom.",
            icon: "meditatePurpleGradient"
        ),
        
        RoomColor(
            color: Color(#colorLiteral(red: 0.4884164929, green: 0.1471119225, blue: 0.8133198619, alpha: 1)),
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
            color: Color(#colorLiteral(red: 0.4953653812, green: 0, blue: 0.5411412716, alpha: 1)),
            name: "Magenta | Perception",
            description: "If emotional balance and internal wisdom is what you seek, let magenta be your guide.",
            moods: "Balance. Perception. Vision. Wisdom.",
            icon: "meditatePurpleGradient"
        ),
        RoomColor(
            color: Color(#colorLiteral(red: 0.7981805205, green: 0, blue: 0.5793473125, alpha: 1)),
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

struct soundModal: View {
    var body: some View {
        VStack {
            
            Image(systemName: "headphones")
                .renderingMode(.original)
                .font(.system(size: 16, weight: .medium))
                .frame(width: 36, height: 36)
                .background(Color.white)
                //add clipShape before shadow
                .clipShape(Circle())
                //add double drop shadow
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            Text("Get Background Music")
        }
    }
}

struct timerModal: View {
    var body: some View {
        VStack {
            
            Image(systemName: "clock")
                .renderingMode(.original)
                .font(.system(size: 16, weight: .medium))
                .frame(width: 36, height: 36)
                .background(Color.white)
                //add clipShape before shadow
                .clipShape(Circle())
                //add double drop shadow
                .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            Text("Set A Timer")
        }
    }
}
