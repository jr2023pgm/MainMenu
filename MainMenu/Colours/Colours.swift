//
//  Colours.swift
//  MainMenu
//
//  Created by jr on 17/08/2023.
//

import SwiftUI

struct Colours: View {
    static func randomiser() -> Double {
        return Double.random(in: 0..<1)
    }
    
    @State var redActual = randomiser()
    @State var greenActual = randomiser()
    @State var blueActual = randomiser()
    
    @State var redSlider: Double
    @State var greenSlider: Double
    @State var blueSlider: Double
    
    @State var showAlert = false
    
    func reset() {
        redActual = Colours.randomiser()
        greenActual = Colours.randomiser()
        blueActual = Colours.randomiser()
        
        redSlider = 0.0
        blueSlider = 0.0
        greenSlider = 0.0
        
    }
    
    func stars() -> String {
        let difference = Int(abs((redActual*255) * (greenActual * 255) * (blueActual * 255) - (redSlider*255) * (greenSlider * 255) * (blueSlider * 255)))
        
        if (difference < 1048576) {
            return "⭐️⭐️⭐️⭐️"
        }
        else if  (difference<2097152) {
            return "⭐️⭐️⭐️"
        }
        else if (difference<4194304) {
            return "⭐️⭐️"
        }
        else if (difference<8388608){
            return "⭐️"
        }
        else {
            return "Not even close!"
        }
        
    }
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Match this Colour")
                .font(.largeTitle)
                .bold()
            HStack {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .fill(Color(red: redActual, green: greenActual, blue: blueActual))
                    .padding()
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .fill(Color(red: redSlider, green: greenSlider, blue: blueSlider))
                    .padding()
            }
            
            Sliders(value: $redSlider, color: .red, textColor: "Red")
            Sliders(value: $greenSlider, color: .green, textColor: "Green")
            Sliders(value: $blueSlider, color: .blue, textColor: "Blue")
            
            Button(action: {self.showAlert = true}) {
                Text("Submit")
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Your performance"), message: Text(stars()))
            }
            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
            .background(Color(.black))
            .cornerRadius(.infinity)
            .foregroundColor(.white)
            
            Button(action: {reset()}) {
                Text("Reset")
            }
            .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
            .background(Color(.black))
            .cornerRadius(.infinity)
            .foregroundColor(.white)
            
        }
    }
}

#Preview {
    Colours(redSlider: 0.0, greenSlider: 0.0, blueSlider: 0.0)
}

struct Sliders: View {
    @Binding var value: Double
    var color: Color
    var textColor: String
    
    var body: some View {
        VStack {
            Text("\(textColor) (\(Int(value*255)))")
                .font(.largeTitle)
            Slider(value: $value)
                .accentColor(color)
                .padding()
        }
    }
}
