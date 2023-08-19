//
//  ContentView.swift
//  MainMenu
//
//  Created by jr on 17/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var game = EmojiMemoryGameViewModel(theme: DefaultThemes.theme1)
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: MentalMath()) {
                    Text("Mental math")
                }
                
                NavigationLink(destination: Colours(redSlider: 0.0, greenSlider: 0.0, blueSlider: 0.0)) {
                    Text("Colours")
                }
                
                NavigationLink(destination: QuizAppView()) {
                    Text("Quiz")
                }
                
                NavigationLink(destination: ThemeSelectionView(tcManager: ThemeCollectionManager())) {
                    Text("Memory Game")
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
