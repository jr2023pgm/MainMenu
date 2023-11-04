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
            
            Text("Sharpen your mental math by working on these mathematics questions!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Colour Match")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Do you have the artist's eye to correctly match the colours?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Trivia Game")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Test your general knowledge with the thought-provoking questions in this quiz!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Memory Game")
                .font(.system(size: 25, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Text("Push your memory to the limits and match the cards as quickly as you can!")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
        }
        .padding()
    }
}

#Preview {
    InstructionsView()
}
