//
//  ContentView.swift
//  goal-tracker
//
//  Created by Alex Marquez on 3/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var note = ""
    
    var body: some View {
        VStack() {
            Text("Community")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            ScrollView {
                VStack(spacing: 0.1) {
                    Label("John", systemImage: "person")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack() {
                        VStack() {
                            Text("Goal")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .center)
                            Text("Buy coffee 3 times in a week")
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        HStack() {
                          VStack() {
                              Text("Status")
                                  .font(.headline)
                                  .frame(maxWidth: .infinity, alignment: .center)
                              Text("1 coffee left")
                                  .frame(maxWidth: .infinity, alignment: .center)
                          }
                            VStack() {
                                Text("Time Remaining")
                                    .font(.headline)
                                Text("3 days")
                                    .foregroundStyle(.red)
                            }
                        }
                        .padding()
                    }
                    HStack() {
                        TextField("",
                                  text: $note,
                                  prompt: Text("Send encouragement!")
                                            .foregroundColor(.blue)
                        )
                        .textFieldStyle(.roundedBorder)
                    }
                }
                .padding()
                .border(Color.black)
                .padding()
                
                VStack(spacing: 0.1) {
                    Label("Mary", systemImage: "person")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack() {
                        VStack() {
                            Text("Goal")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .center)
                            Text("Order clothes twice this month")
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        HStack() {
                          VStack() {
                              Text("Status")
                                  .font(.headline)
                                  .frame(maxWidth: .infinity, alignment: .center)
                              Text("0/2 orders")
                                  .frame(maxWidth: .infinity, alignment: .center)
                          }
                            VStack() {
                                Text("Time Remaining")
                                    .font(.headline)
                                Text("30 days")
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding()
                    }
                    HStack() {
                        TextField("",
                                  text: $note,
                                  prompt: Text("Send encouragement!")
                                            .foregroundColor(.blue)
                        )
                        .textFieldStyle(.roundedBorder)
                    }
                }
                .padding()
                .border(Color.black)
                .padding()
            }
            

        }
        Spacer()
        
        Button("Add Friend") {
            print("Button tapped!")
        }
        .buttonStyle(.bordered)
        
        
    }
}

#Preview {
    ContentView()
}
