//
//  PrimaryButton.swift
//  MainMenu
//
//  Created by jr on 19/08/2023.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color(.blue)
    
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
