//
//  MultiOne.swift
//  MultiTables
//
//  Created by Tristin Smith on 6/17/24.
//

import SwiftUI

struct MultiAll: View {
    let timesTable: Int
    
    let questionCount: Int
    
    @State private var currentQuestion = 1
    
    @State private var randomMultiplier = Int.random(in: 1..<13)
    
    @State private var answer: Int?
    
    @State private var showView = false
    @State private var correct = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("Question \(currentQuestion) of \(questionCount)")
                
                Spacer()
                
                Text("\(timesTable) * \(randomMultiplier) = ")
                    .font(.system(size: 30))
                TextField("Answer", value: $answer, format: .number)
                    .frame(maxWidth:.infinity, alignment: .center)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                
                Spacer()
                Button("Check Answer") {
                    checkAnswer(answer ?? 0, timesTable, randomMultiplier)
                }
                
                if showView {
                    Text("Your answer is \(correct ? "Correct!" : "Wrong")")
                    Button("Next Question") {
                        nextQuestion()
                    }
                    
                }
                Spacer()
                
            }
            .navigationTitle("\(timesTable) MultiTables" )
        }
    }
    
    func checkAnswer(_ input: Int,_ table: Int, _ multiplier: Int) {
        if table * multiplier == answer {
            correct = true
            showView = true
        }
        else {
            correct = false
            showView = true
        }
    }
    
    func nextQuestion() {
        randomMultiplier = Int.random(in: 1..<13)
        answer = 0
        currentQuestion += 1
        showView = false
    }
}

#Preview {
    MultiAll(timesTable: 1, questionCount: 1)
}
