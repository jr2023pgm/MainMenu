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
            ZStack {
                Color(red: 1, green: 0.780392156862745, blue: 0.364705882352941)
                VStack {
                    Text("Revive")
                        .foregroundStyle(.black)
                    HStack {
                        NavigationLink(destination: MentalMath()) {
                            VStack {
                                Image(systemName: "plus.forwardslash.minus")
                                    .renderingMode(.original)
                                    .font(.system(size: 50))
                                    .tint(Color(red: 0.0011, green: 0.777, blue: 0.742))
                                Text("Mental Math")
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding()
                        
                        NavigationLink(destination: Colours(redSlider: 0.0, greenSlider: 0.0, blueSlider: 0.0)) {
                            VStack {
                                Image(systemName: "circle.hexagongrid.fill")
                                    .renderingMode(.original)
                                    .font(.system(size: 50))
                                Text("Colour Match")
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding()
                        
                    }
                    .padding()
                    
                    HStack {
                        
                        NavigationLink(destination: QuizAppView()) {
                            VStack {
                                Image(systemName: "list.bullet.clipboard")
                                    .font(.system(size: 50))
                                    .tint(Color(red: 0.24275, green: 0.3359375, blue: 0.83984375))
                                Text("Trivia Game")
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding()
                        
                        NavigationLink(destination: ThemeSelectionView(tcManager: ThemeCollectionManager())) {
                            VStack {
                                Image(systemName: "brain.head.profile")
                                    .renderingMode(.original)
                                    .font(.system(size: 50))
                                    .tint(Color(red: 1, green: 0.171875, blue: 0.33203125))
                                Text("Memory Game")
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding()
                    
                    }
                    .padding()
                        
                        NavigationLink(destination: InstructionsView()) {
                            VStack {
                                Image(systemName: "questionmark.circle.fill")
                                    .renderingMode(.original)
                                    .font(.system(size: 50))
                                Text("Help")
                                    .foregroundStyle(.black)
                            }
                        }
                        
                    
                }
                
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
