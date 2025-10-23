//
//  CircularImage.swift
//  Project Management App
//
//  Created by saeed shaikh on 22/10/25.
//

import SwiftUI

struct CircularImage: View {
   let profileName: String
   let size: CGFloat

   var body: some View {
      Image(profileName)
         .resizable()
         .scaledToFill()
         .frame(width: size, height: size)
         .clipShape(Circle())
         .clipped()
   }
}

#Preview {
   CircularImage(profileName: "profile", size: 80)
}
