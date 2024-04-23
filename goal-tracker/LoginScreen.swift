//
//  LoginScreen.swift
//  goal-tracker
//
//  Created by Ashna Gupta on 4/22/24.
//

//
//  LoginScreen.swift
//  SwiftUIBlueprint
//
//  Created by Dino Trnka on 19. 4. 2022..
//

import SwiftUI


struct LoginScreen : View {
    @State private var username = ""
    @State private var password = ""
    
    var body : some View {
        NavigationView {
            VStack {
                Text("Welcome back to Bill!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                
                TextField("",
                          text: $username,
                          prompt: Text("Enter username")
                                    .foregroundColor(.blue)
                )
                .textFieldStyle(.roundedBorder)
                .padding()
                
                TextField("",
                          text: $password,
                          prompt: Text("Enter password")
                                    .foregroundColor(.blue)
                )
                .textFieldStyle(.roundedBorder)
                .padding()
 
                NavigationLink(destination: ContentView(), label: { Text("Login") })
                
            }
        }


    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
