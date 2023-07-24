//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0...20, id: \.self) { _ in
                    TweetRowView()
                    
                }
            }
            
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
