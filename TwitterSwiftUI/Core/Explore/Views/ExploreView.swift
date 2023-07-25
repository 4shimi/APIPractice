//
//  ExploreView.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/23.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
            VStack{
                ScrollView{
                    LazyVStack{
                        ForEach(0...25, id: \.self) { _ in
                            NavigationLink{
                                ProfileView()
                                    .navigationBarBackButtonHidden()
                            } label: {
                                UserRowView()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
