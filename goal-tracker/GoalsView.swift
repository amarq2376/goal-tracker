//
//  GoalsView.swift
//  goal-tracker
//
//  Created by Ashna Gupta on 4/23/24.
//

import SwiftUI

struct GoalsView: View {
    @State private var selectedTab: Tab = .house
    @State private var addMode = false
    
    var body: some View {
        NavigationView {
            VStack() {
                Text("Your Goals")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView {
                    VStack(spacing: 0.1) {
                        VStack() {
                            VStack() {
                                Text("Description:")
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("Buy coffee 3 times in a week")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            HStack() {
                                VStack() {
                                    Text("Status:")
                                        .font(.headline)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("1 coffee left")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                                VStack() {
                                    Text("Time Remaining:")
                                        .font(.headline)
                                    Text("3 days")
                                        .foregroundStyle(.red)
                                }
                            }
                            .padding()
                        }
                       
                    }
                    .padding()
                    .border(Color.black)
                    .padding()
                }
                
                
        }

            
        }
        
        
        
        Spacer()
        HStack() {
            NavigationLink(destination: MessagesView(), label: {Image(systemName: "house")})
                .padding()
            NavigationLink(destination: ContentView(), label: {Image(systemName: "person")})
                .padding()
            NavigationLink(destination: MessagesView(), label: {Image(systemName: "message")})
                .padding()
           
        }
        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 100)
        .background(.thinMaterial)
        .cornerRadius(10)
        .ignoresSafeArea()
        // TabView(selectedTab: $selectedTab)
    }
}

#Preview {
    GoalsView()
}
