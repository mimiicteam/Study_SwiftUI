//
//  ContentView.swift
//  GussTheFlag
//
//  Created by NGUYEN MINH DUC on 25/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scroreTitle = ""
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    @State private var scoreNumber = 0
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("MINI GAME")
                        .font(.subheadline.bold())
                    
                    Text(countries[correctAnswer])
                        .font(.subheadline.monospaced())
                        .padding(10)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                            .cornerRadius(10)
                    }
                }
                
                Text("Score: \(scoreNumber)")
                    .font(.subheadline.bold())
                    .frame(width: 120, height: 50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.black, lineWidth: 1)
                    )
            }
        }
        .alert(scroreTitle, isPresented: $showingScore) {
            if scroreTitle == "Correct :)" {
                Button("Continue", action: askQuestion)
            } else {
                Button("Again", action: askQuestion)
            }
        } message: {
            Text("TEST")
        }
    }
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scroreTitle = "Correct :)"
            scoreNumber += 1
        } else {
            scroreTitle = "Wrong :("
            scoreNumber = 0
        }
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
