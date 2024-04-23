//
//  MessagesView.swift
//  goal-tracker
//
//  Created by Ashna Gupta on 3/31/24.
//

import SwiftUI

struct MessagesView: View {
    @State private var selectedTab: Tab = .message
    
    var body: some View {
        NavigationView {
            VStack() {
                Text("Messages")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                ScrollView {
                    VStack(spacing: 0.1) {
                        HStack() {
                            Label("Mary", systemImage: "person")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                            Text("Good job!")
                                .frame(alignment: .leading)
                          
                        }
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                        .padding()
                        
                        HStack() {
                            Label("John", systemImage: "person")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                            Text("Stay Strong! Make your own coffee! You can do it")
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .background(Color.blue.opacity(0.2))
                        .cornerRadius(10)
                        .padding()
                        
                    }
                }
        }

            
        }
        
        Spacer()
        TabView(selectedTab: $selectedTab)
    }
}

#Preview {
    MessagesView()
}
