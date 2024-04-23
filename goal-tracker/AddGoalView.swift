//
//  AddGoalView.swift
//  goal-tracker
//
//  Created by Ashna Gupta on 4/23/24.
//

import SwiftUI

struct AddGoalView: View {
    var existingItem: ListItem?
    @State private var description = ""
    @State private var status = ""
    @State private var date = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Add a New Goal")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                TextField("",
                           text: $description,
                           prompt: Text("Enter a description of your goal")
                     .foregroundColor(.blue)
                 )
                 .textFieldStyle(.roundedBorder)
                 .padding()
                
                TextField("",
                           text: $status,
                           prompt: Text("Enter current status")
                     .foregroundColor(.blue)
                 )
                 .textFieldStyle(.roundedBorder)
                 .padding()
                
                DatePicker(
                       "Select a deadline",
                       selection: $date,
                       displayedComponents: [.date]
                   )
                .foregroundColor(.blue)
                .padding()
                
                Button("Create Goal!") {

                }
                .buttonStyle(.bordered)
                
                NavigationLink(destination: Goal(), label: {Text("See all goals")})
            }
        }



    }
}

#Preview {
    AddGoalView()
}
