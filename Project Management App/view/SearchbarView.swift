//
//  SearchbarView.swift
//  Project Management App
//
//  Created by saeed shaikh on 22/10/25.
//

import SwiftUI

struct SearchbarView: View {
    @State var searchText: String = ""

    var body: some View {
//        HStack {
            HStack {
                
                TextField("Search", text: $searchText)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .padding()
               
               Image(systemName: "magnifyingglass")
                   .foregroundColor(.gray)
                   .font(.system(size: 22))
                   .padding()
                
            }
//            .cornerRadius(8)
//            .background(.white)
//            .padding(8)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(.white))
            )
//        }
//        .padding()
    }
   
}

#Preview {
    SearchbarView()
      .background(.gray)
}
