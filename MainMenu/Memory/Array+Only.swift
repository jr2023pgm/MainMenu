//
//  Array+Only.swift
//  MainMenu
//
//  Created by jr on 19/08/2023.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
