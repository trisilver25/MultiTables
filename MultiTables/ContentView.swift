//
//  ContentView.swift
//  MultiTables
//
//  Created by Tristin Smith on 6/17/24.
//

import SwiftUI

struct ContentView: View {
    // Selecter variable
    @State private var questionAmount = 5
    
    // Array to hold question amounts
    let questionAmounts = [5, 10, 20]

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("⭐️MultiTables⭐️")
                        .font(.title)
                    Spacer()
                    Section("How many questions would you like?") {
                        Picker("Question Amount", selection: $questionAmount) {
                            ForEach(questionAmounts, id: \.self) {
                                Text($0, format: .number)
                            }
                        }
                        .pickerStyle(.segmented)
                        .colorMultiply(.green)
                    }
                    
                    Spacer()
                    
                    Text("Select which table you'd like to practice from")
                        .font(.headline)
                    
                    
                    HStack {
                        NavigationLink(destination: MultiAll(timesTable: 1, questionCount: questionAmount)) {
                            Image(systemName: "1.square.fill")
                                .foregroundStyle(.black.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink(destination: MultiAll(timesTable: 2, questionCount: questionAmount)) {
                            Image(systemName: "2.square.fill")
                                .foregroundStyle(.red.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink (destination: MultiAll(timesTable: 3, questionCount: questionAmount)) {
                            Image(systemName: "3.square.fill")
                                .foregroundStyle(.orange.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink (destination: MultiAll(timesTable: 4, questionCount: questionAmount)) {
                            Image(systemName: "4.square.fill")
                                .foregroundStyle(.yellow.gradient)
                                .font(.system(size: 80))
                        }
                    }
                    
                    HStack {
                        NavigationLink (destination: MultiAll(timesTable: 5, questionCount: questionAmount)) {
                            Image(systemName: "5.square.fill")
                                .foregroundStyle(.green.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink (destination: MultiAll(timesTable: 6, questionCount: questionAmount)) {
                            Image(systemName: "6.square.fill")
                                .foregroundStyle(.blue.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink (destination: MultiAll(timesTable: 7, questionCount: questionAmount)) {
                            Image(systemName: "7.square.fill")
                                .foregroundStyle(.indigo.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink (destination: MultiAll(timesTable: 8, questionCount: questionAmount)) {
                            Image(systemName: "8.square.fill")
                                .foregroundStyle(.purple.gradient)
                                .font(.system(size: 80))
                        }
                    }
                    
                    HStack {
                        NavigationLink (destination: MultiAll(timesTable: 9, questionCount: questionAmount)) {
                            Image(systemName: "9.square.fill")
                                .foregroundStyle(.pink.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink (destination: MultiAll(timesTable: 10, questionCount: questionAmount)) {
                            Image(systemName: "10.square.fill")
                                .foregroundStyle(.cyan.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink (destination: MultiAll(timesTable: 11, questionCount: questionAmount)) {
                            Image(systemName: "11.square.fill")
                                .foregroundStyle(.teal.gradient)
                                .font(.system(size: 80))
                        }
                        
                        NavigationLink (destination: MultiAll(timesTable: 12, questionCount: questionAmount)) {
                            Image(systemName: "12.square.fill")
                                .foregroundStyle(.mint.gradient)
                                .font(.system(size: 80))
                        }
                    }
                    
                    Spacer()
                }
                .padding()
            }
            .background(.white.gradient)
        }
    }
}

#Preview {
    ContentView()
}
