//
//  Goal.swift
//  goal-tracker
//
//  Created by Ashna Gupta on 4/23/24.
//

import SwiftUI

struct Goal: View {
    @State private var addMode = false
    
  var body: some View {
      NavigationView {
          VStack {
              Text("Your Goals")
                  .font(.largeTitle)
                  .fontWeight(.bold)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .padding()
              
              List {
                  GoalModel("Apple", description: "Eat one a day", status: 2, date: Date.now)
                GoalModel("Mango", description: "Soft and sweet", date: Date.now)
              }
              
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
              
              
              HStack() {
                  NavigationLink(destination: Goal(), label: {Image(systemName: "house")})
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
              
          }
          
          
      }
      
  }
}
 
private struct GoalModel: View {
    var title: String
    var description: String?
    var status: Int
    var date: Date
    
    init(_ title: String, description: String? = nil, status: Int = 1, date: Date) {
        self.title = title
        self.description = description
        self.status = status
        self.date = date
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                if let description = description {
                    Text(description)
                        .font(.subheadline)
                }
                Text("End Goal Date is \(date.formatted(date: .long, time: .omitted))")
            }
            Spacer()
            Text("\(status)")
                .font(.title)
        }
    }
}

#Preview {
    Goal()
}
