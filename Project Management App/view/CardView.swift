//
//  CardView.swift
//  Project Management App
//
//  Created by saeed shaikh on 23/10/25.
//

import SwiftUI

struct CardView: View {
   var post: PostDetail
    var body: some View {
        VStack(alignment: .leading){
            HStack{
               Text(post.user_name)
                    .foregroundStyle(.gray)
                Spacer()
                Text(post.post_time)
                    .foregroundStyle(.gray)
            }
            Text(post.title)
                .fontWeight(.bold)
                .font(.title)
                .padding(.vertical, 5)
            Label {
                Text(post.info)
            } icon: {
                Image(systemName: "info.circle")
            }
        }
        .padding()
        .frame(height: 150)
        .cornerRadius(15)
        .overlay(content: {
           RoundedRectangle(cornerRadius: 15)
              .stroke(.gray, lineWidth: 1)
        })
//        .border(.gray.opacity(0.3), width: 1)
//        .background(.white)
        .shadow(radius: 1)
//        .padding()
        
    }
}

#Preview {
   let samplePostDetail = PostDetail(user_name: "sam", post_time: "2hr", title: "Project Delivery", info: "Deadline is today Evening.")
    CardView(post:samplePostDetail)
}
