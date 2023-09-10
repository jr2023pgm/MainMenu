//
//  SplashScreenView.swift
//  Revive
//
//  Created by jr on 20/08/2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.0
    
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color(red: 1, green: 0.780392156862745, blue: 0.364705882352941)
                VStack {
                    VStack {
                        Image("LogoNoBG")
                            .resizable()
                            .scaledToFit()
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.isActive = true
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    SplashScreenView()
}
