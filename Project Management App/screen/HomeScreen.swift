//
//  HomeScreen.swift
//  Project Management App
//
//  Created by saeed shaikh on 22/10/25.
//

import SwiftUI

struct HomeScreen: View {
   
    var body: some View {
       VStack {
          VStack(alignment: .leading){
             Text("Task for today:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 50)
                .padding(.bottom, 5)
             Label {
                Text("5 available")
             } icon: {
                Image(systemName: "star.fill")
                   .foregroundStyle(.yellow)
                   .font(.footnote)
             }
             SearchbarView()
                .padding(.top, 30)
             
             HStack{
                Text("Last Connections")
                   .font(.headline)
                   .fontWeight(.bold)
                Spacer()
                Text("See all")
                   .font(.footnote)
                   .foregroundStyle(.gray)
             }
             .padding(.top, 30)

             ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16) {
                   Section{
                      ForEach(1...5, id: \.self) { i in
                          CircularImage(profileName: String(i), size: 52)
                      }
                   } footer: {
                      Text("+5")
                         .frame(width: 52, height: 52)
                         .background(Color.gray.opacity(0.2))
                         .clipShape(Circle())
                   }
                }
                .frame(height: 55)
                .padding(.bottom, 20)
             }
          }
          .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
          .padding(.horizontal)
          
          // card Details
          VStack{
             HStack{
                Text("Active Projects")
                   .font(.title)
                   .fontWeight(.bold)
                Spacer()
                Text("See all")
                   .font(.footnote)
                   .foregroundStyle(.gray)
             }
//                .padding(.all, 20)
             ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(spacing: 10) {
                   ForEach(CardDetails){detail in
                      CardView(post: detail)
                   }
                }
             }
          }
          .padding()
          .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
          .background(.white)
          .cornerRadius(25)
          .ignoresSafeArea(edges:.bottom)
          
          
          
       }
       .frame(maxWidth: .infinity, maxHeight: .infinity)
       .background(Color("background"))
    }
}

#Preview {
    HomeScreen()
}
