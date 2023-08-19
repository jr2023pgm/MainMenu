//
//  Extensions.swift
//  MainMenu
//
//  Created by jr on 19/08/2023.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color(.black))
    }
}
