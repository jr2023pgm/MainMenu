//
//  QuizAppView.swift
//  MainMenu
//
//  Created by jr on 19/08/2023.
//

import SwiftUI

struct QuizAppView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack (spacing: 40){
                VStack (spacing: 20) {
                    Text("Quiz")
                        .lilacTitle()
                    
                    Text("Are you ready to test your knowledge?")
                        .foregroundColor(Color(.black))
                }
                
                NavigationLink {
                    TriviaView()
                        .environmentObject(TriviaManager())
                } label: {
                    PrimaryButton(text: "Let's go!")
                }
                
                
            }
            .padding()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //.background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        }
    }
}

#Preview {
    QuizAppView()
}
