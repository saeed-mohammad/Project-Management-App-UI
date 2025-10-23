//
//  ContentView.swift
//  Project Management App
//
//  Created by saeed shaikh on 21/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       NavigationStack {
          ZStack{
             TabView{
                HomeScreen()
                   .tabItem {
                      Image(systemName: "house.fill")
                   }
                Text("the content")
                   .tabItem {
                      Image(systemName: "folder.fill")
                   }
                Text("content")
                   .tabItem {
                      Image(systemName: "doc.plaintext.fill")
                   }
                Text("calender")
                   .tabItem {
                      Image(systemName: "calendar")
                   }
             }
             .accentColor(.black)
          }
          .toolbar {
              ToolbarItemGroup(placement: .navigationBarLeading) {
                      CircularImage(profileName: "profile", size: 40)
                      Text("Hi, Kira!")
                          .foregroundStyle(.gray)
                          .font(.footnote)
                          .fixedSize()
              }
              ToolbarItem(placement: .navigationBarTrailing) {
                  Image(systemName: "bell.fill")
              }
          }
       }
    }
}

#Preview {
    ContentView()
}
