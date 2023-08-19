//
//  AnswerButton.swift
//  MainMenu
//
//  Created by jr on 17/08/2023.
//

import SwiftUI

struct AnswerButton: View {
    
    var number: Int
    
    var body: some View {
        Text("\(number)")
            .frame(width: 110, height: 110)
            .font(.system(size: 40, weight: .bold))
            .foregroundColor(Color.white)
            .background(Color.blue)
            .clipShape(Circle())
            .padding()
    }
}

#Preview {
    AnswerButton(number: 100)
}
