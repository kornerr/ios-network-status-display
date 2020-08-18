//
//  ContentView.swift
//  statusui
//
//  Created by Mikhail Kapelko on 18.08.2020.
//  Copyright © 2020 Mikhail Kapelko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double

    @State var showAlert = false
    
    func computeScore() -> Int {
        let dr = rGuess - rTarget
        let dg = gGuess - gTarget
        let db = bGuess - bTarget
        let diff = sqrt(dr * dr + dg * dg + db * db)
        return Int((1.0 - diff) * 100 + 0.5)
    }

    var body: some View {
        VStack {
            HStack {
                // Target color block
                VStack {
                    Rectangle()
                        .foregroundColor(Color(red: rTarget, green: gTarget, blue: bTarget))
                    Text("Match this color")
                }
                // Guess color block
                VStack {
                    Rectangle()
                        .foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess))
                    HStack {
                        Text("R: \(Int(rGuess * 255.0))")
                        Text("G: \(Int(gGuess * 255.0))")
                        Text("B: \(Int(bGuess * 255.0))")
                    }
                }
            }
            
            Button(action: {
                self.showAlert = true
            }) {
                Text("Hit me!")
            }
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Your score"),
                        message: Text("\(computeScore())")
                    )
                }
            
            VStack {
                ColorSlider(value: $rGuess, textColor: .red)
                ColorSlider(value: $gGuess, textColor: .green)
                ColorSlider(value: $bGuess, textColor: .blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
    }
}

struct ColorSlider: View {
    
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("0")
                .foregroundColor(textColor)
            Slider(value: $value)
            Text("255")
                .foregroundColor(textColor)
        }
        .padding()
    }
}
