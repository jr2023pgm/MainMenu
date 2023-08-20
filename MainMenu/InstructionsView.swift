//
//  InstructionsView.swift
//  MainMenu
//
//  Created by jr on 19/08/2023.
//

import SwiftUI

struct InstructionsView: View {
    var body: some View {
        ScrollView {
            Text("Instructions")
                .font(.system(size: 36, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Mental Math")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("The mental math game is a simple addition game. An addition question will be displayed on screen, and the user has to select the correct option from the options given. A correct answer will increase the score, and an incorrect answer will reduce the score.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Colours")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("The colours game is a game to improve the visual skills of the player. A colour will be displayed on screen, and the user can use the given RGB colour sliders to try to match the given colour as accurately as possible. The app will then rate the user's colour, based on how accurate they were.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Quiz")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("This is a simple quiz game which gets its questions from an online API. There are 10 questions, and the app will display the user's score at the end.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Memory game")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("This is a memory game app, in which users have to match cards. The cards will change depending on the theme selected. The user can also modify the themes if they wish.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            /*Text("Acknowledgements")
                .font(.system(size: 33, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()*/
            
        }
        .padding()
    }
}

#Preview {
    InstructionsView()
}
