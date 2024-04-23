//
//  TabView.swift
//  goal-tracker
//
//  Created by Ashna Gupta on 3/31/24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case person
    case message
}

struct TabView: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
      selectedTab.rawValue + ".fill"
   }
    
    var body: some View {

            VStack {
                
               HStack {
                 ForEach(Tab.allCases, id: \.rawValue) { tab in
                     Spacer()
                     Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                         .onTapGesture {
                              withAnimation(.easeIn(duration: 0.1)){
                                  selectedTab = tab
                              }
                             
                         }
                
                     Spacer()
                   }
                }
                
                .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 100)
                .background(.thinMaterial)
                .cornerRadius(10)
                
           }
            .ignoresSafeArea()
    }
}

struct TabView_Previews: PreviewProvider {
     static var previews: some View {
         TabView(selectedTab: .constant(.house))
     }
}
