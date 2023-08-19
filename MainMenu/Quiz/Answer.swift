//
//  Answer.swift
//  MainMenu
//
//  Created by jr on 19/08/2023.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
}
