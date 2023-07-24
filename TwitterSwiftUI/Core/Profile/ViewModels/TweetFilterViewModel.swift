//
//  TweetFilterViewModel.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/25.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
case tweets
case replies
case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
