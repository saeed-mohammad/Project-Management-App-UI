//
//  CardDetails.swift
//  Project Management App
//
//  Created by saeed shaikh on 23/10/25.
//
import Foundation

struct PostDetail: Hashable, Identifiable {
    var id = UUID()
    var user_name: String
    var post_time: String
    var title: String
    var info: String
}

var CardDetails: [PostDetail] = [
        PostDetail(
            user_name: "Numero 10",
            post_time: "4hr",
            title: "Blog and social posts",
            info: "Deadline is today"
        ),
        PostDetail(
            user_name: "Gorge aroma",
            post_time: "7d",
            title: "New Campain review",
            info: "Deadline is today"
        ),
        PostDetail(
            user_name: "Numero 10",
            post_time: "4hr",
            title: "Blog and social posts",
            info: "Deadline is today"
        ),
        PostDetail(
            user_name: "Gorge aroma",
            post_time: "7d",
            title: "New Campain review",
            info: "Deadline is today"
        ),
]
