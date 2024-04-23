//
//  GoalView.swift
//  goal-tracker
//
//  Created by Ashna Gupta on 4/23/24.
//

import SwiftUI


struct ListItem: Identifiable {
    var id = UUID()
    var name: String
}

struct GoalView: View {
    @State private var selectedTab: Tab = .house
    @State private var addMode = false
    
    var listItems = [
        ListItem(name: "List Item One"),
        ListItem(name: "List Item Two")
    ]
    
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
                
                
                VStack {
                    List(listItems) { listItem in
                        NavigationLink(destination: AddGoalView(existingItem: listItem)) {
                            Text(listItem.name)
                        }
                    }
                    .navigationBarTitle(Text("Configure List Items"), displayMode: .inline)
                    .navigationBarItems(trailing: Button(action: {
                        // button activates link
                        self.addMode = true
                    } ) {
                        Image(systemName: "plus")
                            .resizable()
                            .padding(6)
                            .frame(width: 24, height: 24)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                    } )
                    
                    // invisible link inside NavigationView for add mode
                    NavigationLink(destination: AddGoalView(existingItem: nil),
                                   isActive: $addMode) { EmptyView() }
                }
                
                
            }
        }
    }
}

#Preview {
    GoalView()
}
